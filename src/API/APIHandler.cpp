#include "APIHandler.hpp"
#include <curl/curl.h>
#include <nlohmann/json.hpp>
#include <iostream>
#include <string>

using json = nlohmann::json;


static size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* s) {
    size_t newLength = size * nmemb;
    try {
        s->append((char*)contents, newLength);
    } catch (std::bad_alloc& e) {
        // Handle memory problem
        return 0;
    }
    return newLength;
}


APIHandler::APIHandler(const std::string& apiKey, const std::string& apiURL)
    : apiKey(apiKey), apiURL(apiURL) {}


std::string APIHandler::sendRequest(const std::string& endpoint, const json& data) {
    std::string response;
    CURL* curl = curl_easy_init();

    if (curl) {
        std::string fullURL = apiURL + endpoint;
        curl_easy_setopt(curl, CURLOPT_URL, fullURL.c_str());
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, data.dump().c_str());

        struct curl_slist* headers = nullptr;
        headers = curl_slist_append(headers, ("Authorization: Bearer " + apiKey).c_str());
        headers = curl_slist_append(headers, "Content-Type: application/json");
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);

        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);

        CURLcode res = curl_easy_perform(curl);
        if (res != CURLE_OK) {
            std::cerr << "cURL error: " << curl_easy_strerror(res) << std::endl;
        }

        curl_slist_free_all(headers);
        curl_easy_cleanup(curl);
    } else {
        std::cerr << "Failed to initialize cURL." << std::endl;
    }

    return response;
}


json APIHandler::getHistoricalData(const std::string& symbol, const std::string& timeframe) {
    json requestPayload = {
        {"ticks_history", symbol},
        {"granularity", timeframe},
        {"end", "latest"},
        {"count", 500},
        {"style", "candles"}
    };

    std::string response = sendRequest("/ticks_history", requestPayload);

    if (response.empty()) {
        std::cerr << "Error: No response from server for historical data." << std::endl;
        return json();
    }

    json jsonResponse = json::parse(response);
    if (jsonResponse.contains("error")) {
        std::cerr << "Error fetching historical data: " << jsonResponse["error"]["message"] << std::endl;
        return json();
    }

    return jsonResponse;
}

bool APIHandler::executeTrade(const std::string& action, double lotSize, const std::string& symbol) {
    json tradePayload = {
        {"symbol", symbol},
        {"action", action},
        {"lot_size", lotSize}
    };

    std::string response = sendRequest("/trade", tradePayload);

    if (response.empty()) {
        std::cerr << "Error: No response from server for trade execution." << std::endl;
        return false;
    }

    json jsonResponse = json::parse(response);
    if (jsonResponse.contains("error")) {
        std::cerr << "Trade execution failed: " << jsonResponse["error"]["message"] << std::endl;
        return false;
    }

    return jsonResponse.contains("success") && jsonResponse["success"] == true;
}
