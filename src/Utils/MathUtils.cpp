#include "MathUtils.hpp"
#include <numeric>
#include <stdexcept>


double MathUtils::calculateSMA(const std::vector<double>& data, int period) {
    if (data.size() < period) {
        throw std::invalid_argument("Data size is smaller than the moving average period");
    }

    double sum = std::accumulate(data.end() - period, data.end(), 0.0);
    return sum / period;
}


double MathUtils::calculateEMA(const std::vector<double>& data, int period) {
    if (data.size() < period) {
        throw std::invalid_argument("Data size is smaller than the EMA period");
    }

    double multiplier = 2.0 / (period + 1);
    double ema = MathUtils::calculateSMA(std::vector<double>(data.begin(), data.begin() + period), period);

    for (size_t i = period; i < data.size(); ++i) {
        ema = ((data[i] - ema) * multiplier) + ema;
    }

    return ema;
}


double MathUtils::percentageDifference(double newValue, double oldValue) {
    if (oldValue == 0) {
        throw std::invalid_argument("Old value cannot be zero in percentage calculation.");
    }
    return ((newValue - oldValue) / oldValue) * 100.0;
}


std::vector<double> MathUtils::normalizeData(const std::vector<double>& data) {
    if (data.empty()) {
        throw std::invalid_argument("Data is empty for normalization.");
    }

    double minVal = *std::min_element(data.begin(), data.end());
    double maxVal = *std::max_element(data.begin(), data.end());

    std::vector<double> normalizedData;
    normalizedData.reserve(data.size());

    for (const auto& val : data) {
        normalizedData.push_back((val - minVal) / (maxVal - minVal));
    }

    return normalizedData;
}
