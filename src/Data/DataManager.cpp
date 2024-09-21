#include "include/DataManager.hpp"

DataManager::DataManager(APIHandler& apiHandler) : historicalData(apiHandler) {}

std::vector<double> DataManager::getHistoricalData(const std::string& symbol, const std::string& timeframe) {
    return historicalData.fetchHistoricalPrices(symbol, timeframe);
}
