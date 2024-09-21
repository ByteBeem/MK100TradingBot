#include "TradeExecutor.hpp"

TradeExecutor::TradeExecutor(APIHandler& apiHandler) : apiHandler(apiHandler) {}

bool TradeExecutor::executeTrade(const std::string& action, double lotSize, const std::string& symbol) {
    if (action != "BUY" && action != "SELL") {
        std::cerr << "Invalid action. Trade action must be either 'BUY' or 'SELL'." << std::endl;
        return false;
    }
   
    return true; 
}
