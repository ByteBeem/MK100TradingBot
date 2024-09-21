#ifndef UTILS_HPP
#define UTILS_HPP

#include <vector>
#include <string>
#include <stdexcept>
#include <numeric>
#include "Config.hpp" 

Config loadConfig(const std::string& configPath);

class Utils {
public:
    static double calculateMovingAverage(const std::vector<double>& data, int period);
};

class Logger {
public:
    static void log(const std::string& message);

};



#endif 
