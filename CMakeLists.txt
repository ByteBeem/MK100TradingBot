cmake_minimum_required(VERSION 3.10)


project(MK100TradingBot)

d
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)


include_directories(include)


add_executable(MK100TradingBot 
    main.cpp
    src/API/APIHandler.cpp
    src/Data/DataManager.cpp
    src/Data/HistoricalData.cpp
    src/Execution/TradeExecutor.cpp
    src/Risk/RiskManager.cpp
    src/Signals/SignalGenerator.cpp
    src/Utils/Utils.cpp
)


# find_package(nlohmann_json 3.2.0 REQUIRED)
# target_link_libraries(MK100TradingBot PRIVATE nlohmann_json::nlohmann_json)


set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)
