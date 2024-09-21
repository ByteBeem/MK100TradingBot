#ifndef UTILS_HPP
#define UTILS_HPP

#include <vector>
#include <string>
#include <fstream>

namespace Utils {
    double calculateMovingAverage(const std::vector<double>& data, int period);
}

class Logger {
public:
    static void log(const std::string& message);
};

#endif
