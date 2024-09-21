#ifndef TRADE_EXECUTOR_HPP
#define TRADE_EXECUTOR_HPP

#include <string>
#include <iostream> 
#include "APIHandler.hpp"

class TradeExecutor {
public:
    TradeExecutor(APIHandler& handler);
    bool executeTrade(const std::string& action, double lotSize, const std::string& symbol);
private:
    APIHandler& apiHandler;
};

#endif 
