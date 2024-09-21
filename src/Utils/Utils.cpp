#include "Utils.hpp"
#include "Config.hpp"  
#include <fstream>
#include <nlohmann/json.hpp> 
#include <numeric>

using json = nlohmann::json; 

Config loadConfig(const std::string& configPath) {
    std::ifstream configFile(configPath);
    if (!configFile) {
        throw std::runtime_error("Could not open config file: " + configPath);
    }
    json configJson;  
    configFile >> configJson;
    return Config{
        configJson["apiKey"].get<std::string>(),
        configJson["apiURL"].get<std::string>(),
        configJson["shortMA"].get<int>(),
        configJson["longMA"].get<int>(),
        configJson["maxRisk"].get<double>(),
        configJson["accountBalance"].get<double>(),
    };
}

double Utils::calculateMovingAverage(const std::vector<double>& data, int period) {
    if (data.size() < period) {
        throw std::invalid_argument("Insufficient data for moving average calculation");
    }
    double sum = std::accumulate(data.end() - period, data.end(), 0.0);
    return sum / period;
}
