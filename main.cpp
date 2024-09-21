#include <iostream>
#include <string>
#include "include/DataManager.hpp"
#include "include/SignalGenerator.hpp"
#include "include/Strategy.hpp"
#include "include/APIHandler.hpp"
#include "include/RiskManager.hpp"
#include "include/TradeExecutor.hpp"
#include "include/Utils.hpp"


int main () {

    std::cout<<" Starting MK100 Trading Bot..." <<std::endl;

    std::string configPath = "config/settings.json";
    Config config = loadConfig(configPath);

    APIHandler apiHandler(config.apiKey , config.apiURL);

    DataManager dataManager(apiHandler);
    std::vector<double> priceData = dataManager.getHistoricalData("XAUUSD", "1h");

    if(priceData.empty()){
        std::cerr << "Error: Failed to fetch market data" <<std::endl;
        return 1;
    }

    SignalGenerator signalGenerator(config.shortMA , config.longMA);
    std::string signal = signalGenerator.generateMASignal(priceData);

    Logger::log("Generated signal:" + signal);

    RiskManager riskManager(config.maxRisk , config.accountBalance);
    double lotSize = riskManager.calculateLotSize();

    if(signal == "BUY" || signal == "SELL" ){
        TradeExecutor tradeExecutor(apiHandler);
        bool tradeSuccess =  tradeExecutor.executeTrade(signal, lotSize , "XAUUSD");

        if(tradeSuccess){
            Logger::log(signal + " trade executed successfully with lot size: " +  std::to_string(lotSize));
        }
        else{
            Logger::log("Failed to execute " + signal + " trade.");
        }

    }
    else{
        Logger::log("No trade signal generated.");
    }

    std::cout<< "Trading session complete. Check logs for details." <<std::endl;

    return 0;
}