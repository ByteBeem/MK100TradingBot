#ifndef APIHANDLER_HPP
#define APIHANDLER_HPP

#include <string>
#include <curl/curl.h>
#include <iostream>
#include <nlohmann/json.hpp> /

using json = nlohmann::json;

class APIHandler {
private:
    std::string apiKey;
    std::string apiURL;

    
    static size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* s) {
        size_t newLength = size * nmemb;
        try {
            s->append((char*)contents, newLength);
        }
        catch (std::bad_alloc& e) {
            // Handle memory problem
            return 0;
        }
        return newLength;
    }

    std::string sendRequest(const std::string& endpoint, const json& data) {
        std::string response;
        CURL* curl = curl_easy_init();

        if(curl) {
            curl_easy_setopt(curl, CURLOPT_URL, (apiURL + endpoint).c_str());
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

            curl_easy_cleanup(curl);
        }

        return response;
    }

public:
    APIHandler(const std::string& apiKey, const std::string& apiURL) 
        : apiKey(apiKey), apiURL(apiURL) {}

    json getHistoricalData(const std::string& symbol, const std::string& timeframe) {
        json requestPayload = {
            {"ticks_history", symbol},
            {"granularity", timeframe},
            {"end", "latest"},
            {"count", 500},
            {"style", "candles"}
        };

        std::string response = sendRequest("/ticks_history", requestPayload);

        json jsonResponse = json::parse(response);
        return jsonResponse;
    }

    bool executeTrade(const std::string& action, double lotSize, const std::string& symbol) {
        json tradePayload = {
            {"symbol", symbol},
            {"action", action},  
            {"lot_size", lotSize}
        };

        std::string response = sendRequest("/trade", tradePayload);
        json jsonResponse = json::parse(response);

        if (jsonResponse.contains("success") && jsonResponse["success"] == true) {
            return true;
        } else {
            std::cerr << "Trade failed: " << jsonResponse.dump() << std::endl;
            return false;
        }
    }
};

#endif 
