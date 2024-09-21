// APIHandler.hpp
#ifndef APIHANDLER_HPP
#define APIHANDLER_HPP

#include <string>
#include <nlohmann/json.hpp>

using json = nlohmann::json;

class APIHandler {
public:
    APIHandler(const std::string& apiKey, const std::string& apiURL);
    std::string sendRequest(const std::string& endpoint, const json& data);
    json getHistoricalData(const std::string& symbol, const std::string& timeframe);
    bool executeTrade(const std::string& action, double lotSize, const std::string& symbol);
   

private:
    std::string apiKey_;
    std::string apiURL_;
};

#endif 
