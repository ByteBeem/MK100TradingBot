#include "APIHandler.hpp"

APIHandler::APIHandler(const std::string& apiKey, const std::string& apiURL) 
    : apiKey_(apiKey), apiURL_(apiURL) {}

std::string APIHandler::sendRequest(const std::string& endpoint, const json& data) {
    // Implementation here...
}

json APIHandler::getHistoricalData(const std::string& symbol, const std::string& timeframe) {
    // Implementation here...
}

bool APIHandler::executeTrade(const std::string& action, double lotSize, const std::string& symbol) {
    // Implementation here...
}
