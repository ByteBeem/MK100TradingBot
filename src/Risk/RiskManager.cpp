#include "RiskManager.hpp"

RiskManager::RiskManager(double maxRisk, double accountBalance) 
    : maxRisk(maxRisk), accountBalance(accountBalance) {}

double RiskManager::calculateLotSize() {
   
    return (maxRisk / 100.0) * accountBalance;
}
