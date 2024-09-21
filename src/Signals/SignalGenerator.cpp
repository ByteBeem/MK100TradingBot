#include "SignalGenerator.hpp"
#include "Utils.hpp"  

SignalGenerator::SignalGenerator(int shortMA, int longMA)
    : shortMA(shortMA), longMA(longMA) {}

std::string SignalGenerator::generateMASignal(const std::vector<double>& priceData) {
    if (priceData.size() < longMA) {
        return "NO_SIGNAL";  
    }

    double shortAvg = Utils::calculateMovingAverage(priceData, shortMA);
    double longAvg = Utils::calculateMovingAverage(priceData, longMA);

    if (shortAvg > longAvg) {
        return "BUY";
    } else if (shortAvg < longAvg) {
        return "SELL";
    }

    return "HOLD";
}
