#include "include/Utils.hpp"
#include <numeric>

double Utils::calculateMovingAverage(const std::vector<double>& data, int period) {
    if (data.size() < period) {
        throw std::invalid_argument("Insufficient data for moving average calculation");
    }

    double sum = std::accumulate(data.end() - period, data.end(), 0.0);
    return sum / period;
}

void Logger::log(const std::string& message) {
    std::ofstream logfile("logs/trading_log.txt", std::ios_base::app);
    logfile << message << std::endl;
}
