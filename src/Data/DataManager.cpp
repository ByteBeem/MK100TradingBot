#include "DataManager.hpp"

DataManager::DataManager(APIHandler& apiHandler) : apiHandler_(apiHandler) {}

std::vector<double> DataManager::getHistoricalData(const std::string& symbol, const std::string& timeframe) {
    return apiHandler_.getHistoricalData(symbol, timeframe); 
}
