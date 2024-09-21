#ifndef HISTORICALDATA_HPP
#define HISTORICALDATA_HPP

#include <vector>
#include <string>
#include "APIHandler.hpp"

class HistoricalData {
public:
    HistoricalData(APIHandler& apiHandler);

    std::vector<double> fetchHistoricalPrices(const std::string& symbol, const std::string& timeframe);

private:
    APIHandler& apiHandler;
};

#endif
