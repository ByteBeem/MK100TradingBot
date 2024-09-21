# MK100 Trading Bot

MK100 Trading Bot is a C++-based algorithmic trading system designed for executing automated trades on the Deriv.com platform. The bot fetches market data, generates trading signals, and manages risk before executing trades using the Deriv.com API.

## Table of Contents
- [Features](#features)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [License](#license)

## Features
- Fetch historical market data for various instruments (e.g., XAUUSD).
- Generate buy/sell signals based on moving average crossovers.
- Execute trades with configurable risk management.
- API integration with Deriv.com for real-time market data and trade execution.
- Logging for easy debugging and trade tracking.

## Project Structure

MK100 ├── backtest/ # Backtesting scripts and data ├── config/ # Configuration files (settings, API keys, etc.) ├── data/ # Stored market data ├── include/ # Header files for the project │ ├── APIHandler.hpp │ ├── DataManager.hpp │ ├── SignalGenerator.hpp │ ├── RiskManager.hpp │ ├── TradeExecutor.hpp │ └── Utils.hpp ├── lib/ # External libraries ├── logs/ # Log files ├── src/ # Source code │ ├── API/ │ ├── Data/ │ ├── Execution/ │ ├── Risk/ │ ├── Signals/ │ └── Utils/ ├── main.cpp # Main entry point of the program └── CMakeLists.txt # Build configuration file for CMake


## Prerequisites

Before you can run the MK100 Trading Bot, make sure you have the following installed:

- **CMake** (version 3.10 or higher)
- **g++** or **clang** compiler supporting C++17
- Internet connection to interact with the Deriv.com API
- External dependencies:
  - **libcurl** for handling HTTP requests
  - **nlohmann/json** for parsing JSON responses

You can install `libcurl` on Linux with:
```bash
sudo apt-get install libcurl4-openssl-dev

git clone https://github.com/Bytebeem/MK100TradingBot.git
cd MK100TradingBot

mkdir build
cd build

cmake ..

make

./bin/MK100TradingBot
```


### Key Sections Explained:
- **Features**: A concise list of the bot's core functionalities.
- **Project Structure**: Shows the organization of your project, including key directories.
- **Prerequisites**: Lists the necessary software and libraries to run the bot.
- **Installation**: Step-by-step instructions to set up and build the project.
- **Configuration**: Describes how to set up the `settings.json` file with API keys and strategy parameters.
- **Usage**: Explains how to run the bot after setup.
- **Logs**: Tells users where to find logs for trade execution and debugging.
- **License**: Mentions the licensing details for the project.

Let me know if you'd like to tweak or extend any section further!

## Happy Trading!!