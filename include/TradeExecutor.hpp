#ifndef TRADEEXECUTOR_HPP
#define TRADEEXECUTOR_HPP

#include <string>
#include "APIHandler.hpp"

class TradeExecutor {
private:
    APIHandler& apiHandler; 

public:
   
    TradeExecutor(APIHandler& handler) : apiHandler(handler) {}


    bool executeTrade(const std::string& action, double lotSize, const std::string& symbol) {
      
        if (action != "BUY" && action != "SELL") {
            std::cerr << "Invalid action. Trade action must be either 'BUY' or 'SELL'." << std::endl;
            return false;
        }

       
        bool success = apiHandler.executeTrade(action, lotSize, symbol);

        if (!success) {
            std::cerr << "TradeExecutor: Failed to execute trade for symbol: " << symbol << std::endl;
        }

        return success;
    }
};

#endif 
