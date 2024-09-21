#include "HistoricalData.hpp"
#include <stdexcept>

HistoricalData::HistoricalData(APIHandler& apiHandler) : apiHandler(apiHandler) {}

std::vector<double> HistoricalData::fetchHistoricalPrices(const std::string& symbol, const std::string& timeframe) {
  
    std::vector<double> prices = apiHandler.getHistoricalData(symbol, timeframe);
    
    if (prices.empty()) {
        throw std::runtime_error("Error: No historical data available for " + symbol);
    }
    
    return prices;
}
