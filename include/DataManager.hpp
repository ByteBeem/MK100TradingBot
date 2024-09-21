#ifndef DATAMANAGER_HPP
#define DATAMANAGER_HPP

#include <vector>
#include <string>
#include "APIHandler.hpp"

class DataManager {
public:
    DataManager(APIHandler& apiHandler);
    std::vector<double> getHistoricalData(const std::string& symbol, const std::string& timeframe);

private:
    APIHandler& apiHandler_; 
};

#endif 
