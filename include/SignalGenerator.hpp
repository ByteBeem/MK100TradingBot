#ifndef SIGNALGENERATOR_HPP
#define SIGNALGENERATOR_HPP

#include <vector>
#include <string>

class SignalGenerator {
public:
    SignalGenerator(int shortMA, int longMA);

    std::string generateMASignal(const std::vector<double>& priceData);

private:
    int shortMA;
    int longMA;
};

#endif
