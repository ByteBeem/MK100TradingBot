#include "Logger.hpp"
#include <fstream>
#include <iostream>
#include <ctime>
#include <iomanip>


const std::string LOG_FILE_PATH = "logs/trading_bot.log";


std::string Logger::getCurrentTimestamp() {
    auto t = std::time(nullptr);
    auto tm = *std::localtime(&t);
    std::ostringstream oss;
    oss << std::put_time(&tm, "%Y-%m-%d %H:%M:%S");
    return oss.str();
}


void Logger::log(const std::string& message) {
    std::string timestamp = getCurrentTimestamp();
    std::string fullMessage = "[" + timestamp + "] " + message;

   
    std::cout << fullMessage << std::endl;

   
    std::ofstream logFile(LOG_FILE_PATH, std::ios_base::app); 
    if (logFile.is_open()) {
        logFile << fullMessage << std::endl;
        logFile.close();
    } else {
        std::cerr << "Error: Unable to open log file: " << LOG_FILE_PATH << std::endl;
    }
}
