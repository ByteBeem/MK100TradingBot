#include "include/TradeExecutor.hpp"
#include <stdexcept>

TradeExecutor::TradeExecutor(APIHandler& apiHandler) : apiHandler(apiHandler) {}

bool TradeExecutor::executeTrade(const std::string& signal, double lotSize, const std::string& symbol) {
    try {
        if (signal == "BUY") {
            apiHandler.placeOrder(symbol, "buy", lotSize);
        } else if (signal == "SELL") {
            apiHandler.placeOrder(symbol, "sell", lotSize);
        } else {
            throw std::invalid_argument("Invalid trade signal: " + signal);
        }
    } catch (const std::exception& e) {
        std::cerr << "Trade execution failed: " << e.what() << std::endl;
        return false;
    }
    return true;
}
