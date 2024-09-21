#ifndef CONFIG_HPP
#define CONFIG_HPP

#include <string>

struct Config {
    std::string apiKey;
    std::string apiURL;
    int shortMA;
    int longMA;
    double maxRisk;
    double accountBalance;
};

#endif 
