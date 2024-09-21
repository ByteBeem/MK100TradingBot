#include "Logger.hpp"
#include <iostream>

void Logger::log(const std::string& message) {
    std::ofstream logfile("logs/trading_log.txt", std::ios_base::app);
    if (logfile.is_open()) {
        logfile << message << std::endl;
    } else {
        std::cerr << "Unable to open log file." << std::endl;
    }
}
