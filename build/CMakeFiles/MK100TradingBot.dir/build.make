# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bytebeem/Desktop/MK100

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bytebeem/Desktop/MK100/build

# Include any dependencies generated for this target.
include CMakeFiles/MK100TradingBot.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MK100TradingBot.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MK100TradingBot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MK100TradingBot.dir/flags.make

CMakeFiles/MK100TradingBot.dir/main.cpp.o: CMakeFiles/MK100TradingBot.dir/flags.make
CMakeFiles/MK100TradingBot.dir/main.cpp.o: /home/bytebeem/Desktop/MK100/main.cpp
CMakeFiles/MK100TradingBot.dir/main.cpp.o: CMakeFiles/MK100TradingBot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bytebeem/Desktop/MK100/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MK100TradingBot.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MK100TradingBot.dir/main.cpp.o -MF CMakeFiles/MK100TradingBot.dir/main.cpp.o.d -o CMakeFiles/MK100TradingBot.dir/main.cpp.o -c /home/bytebeem/Desktop/MK100/main.cpp

CMakeFiles/MK100TradingBot.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MK100TradingBot.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bytebeem/Desktop/MK100/main.cpp > CMakeFiles/MK100TradingBot.dir/main.cpp.i

CMakeFiles/MK100TradingBot.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MK100TradingBot.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bytebeem/Desktop/MK100/main.cpp -o CMakeFiles/MK100TradingBot.dir/main.cpp.s

CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.o: CMakeFiles/MK100TradingBot.dir/flags.make
CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.o: /home/bytebeem/Desktop/MK100/src/API/APIHandler.cpp
CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.o: CMakeFiles/MK100TradingBot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bytebeem/Desktop/MK100/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.o -MF CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.o.d -o CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.o -c /home/bytebeem/Desktop/MK100/src/API/APIHandler.cpp

CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bytebeem/Desktop/MK100/src/API/APIHandler.cpp > CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.i

CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bytebeem/Desktop/MK100/src/API/APIHandler.cpp -o CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.s

CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.o: CMakeFiles/MK100TradingBot.dir/flags.make
CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.o: /home/bytebeem/Desktop/MK100/src/Data/DataManager.cpp
CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.o: CMakeFiles/MK100TradingBot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bytebeem/Desktop/MK100/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.o -MF CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.o.d -o CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.o -c /home/bytebeem/Desktop/MK100/src/Data/DataManager.cpp

CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bytebeem/Desktop/MK100/src/Data/DataManager.cpp > CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.i

CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bytebeem/Desktop/MK100/src/Data/DataManager.cpp -o CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.s

CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.o: CMakeFiles/MK100TradingBot.dir/flags.make
CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.o: /home/bytebeem/Desktop/MK100/src/Data/HistoricalData.cpp
CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.o: CMakeFiles/MK100TradingBot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bytebeem/Desktop/MK100/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.o -MF CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.o.d -o CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.o -c /home/bytebeem/Desktop/MK100/src/Data/HistoricalData.cpp

CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bytebeem/Desktop/MK100/src/Data/HistoricalData.cpp > CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.i

CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bytebeem/Desktop/MK100/src/Data/HistoricalData.cpp -o CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.s

CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.o: CMakeFiles/MK100TradingBot.dir/flags.make
CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.o: /home/bytebeem/Desktop/MK100/src/Execution/TradeExecutor.cpp
CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.o: CMakeFiles/MK100TradingBot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bytebeem/Desktop/MK100/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.o -MF CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.o.d -o CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.o -c /home/bytebeem/Desktop/MK100/src/Execution/TradeExecutor.cpp

CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bytebeem/Desktop/MK100/src/Execution/TradeExecutor.cpp > CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.i

CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bytebeem/Desktop/MK100/src/Execution/TradeExecutor.cpp -o CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.s

CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.o: CMakeFiles/MK100TradingBot.dir/flags.make
CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.o: /home/bytebeem/Desktop/MK100/src/Risk/RiskManager.cpp
CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.o: CMakeFiles/MK100TradingBot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bytebeem/Desktop/MK100/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.o -MF CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.o.d -o CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.o -c /home/bytebeem/Desktop/MK100/src/Risk/RiskManager.cpp

CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bytebeem/Desktop/MK100/src/Risk/RiskManager.cpp > CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.i

CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bytebeem/Desktop/MK100/src/Risk/RiskManager.cpp -o CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.s

CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.o: CMakeFiles/MK100TradingBot.dir/flags.make
CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.o: /home/bytebeem/Desktop/MK100/src/Signals/SignalGenerator.cpp
CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.o: CMakeFiles/MK100TradingBot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bytebeem/Desktop/MK100/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.o -MF CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.o.d -o CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.o -c /home/bytebeem/Desktop/MK100/src/Signals/SignalGenerator.cpp

CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bytebeem/Desktop/MK100/src/Signals/SignalGenerator.cpp > CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.i

CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bytebeem/Desktop/MK100/src/Signals/SignalGenerator.cpp -o CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.s

CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.o: CMakeFiles/MK100TradingBot.dir/flags.make
CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.o: /home/bytebeem/Desktop/MK100/src/Utils/Utils.cpp
CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.o: CMakeFiles/MK100TradingBot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bytebeem/Desktop/MK100/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.o -MF CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.o.d -o CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.o -c /home/bytebeem/Desktop/MK100/src/Utils/Utils.cpp

CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bytebeem/Desktop/MK100/src/Utils/Utils.cpp > CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.i

CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bytebeem/Desktop/MK100/src/Utils/Utils.cpp -o CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.s

CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.o: CMakeFiles/MK100TradingBot.dir/flags.make
CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.o: /home/bytebeem/Desktop/MK100/src/Logger/Logger.cpp
CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.o: CMakeFiles/MK100TradingBot.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/bytebeem/Desktop/MK100/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.o -MF CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.o.d -o CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.o -c /home/bytebeem/Desktop/MK100/src/Logger/Logger.cpp

CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bytebeem/Desktop/MK100/src/Logger/Logger.cpp > CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.i

CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bytebeem/Desktop/MK100/src/Logger/Logger.cpp -o CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.s

# Object files for target MK100TradingBot
MK100TradingBot_OBJECTS = \
"CMakeFiles/MK100TradingBot.dir/main.cpp.o" \
"CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.o" \
"CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.o" \
"CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.o" \
"CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.o" \
"CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.o" \
"CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.o" \
"CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.o" \
"CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.o"

# External object files for target MK100TradingBot
MK100TradingBot_EXTERNAL_OBJECTS =

MK100TradingBot: CMakeFiles/MK100TradingBot.dir/main.cpp.o
MK100TradingBot: CMakeFiles/MK100TradingBot.dir/src/API/APIHandler.cpp.o
MK100TradingBot: CMakeFiles/MK100TradingBot.dir/src/Data/DataManager.cpp.o
MK100TradingBot: CMakeFiles/MK100TradingBot.dir/src/Data/HistoricalData.cpp.o
MK100TradingBot: CMakeFiles/MK100TradingBot.dir/src/Execution/TradeExecutor.cpp.o
MK100TradingBot: CMakeFiles/MK100TradingBot.dir/src/Risk/RiskManager.cpp.o
MK100TradingBot: CMakeFiles/MK100TradingBot.dir/src/Signals/SignalGenerator.cpp.o
MK100TradingBot: CMakeFiles/MK100TradingBot.dir/src/Utils/Utils.cpp.o
MK100TradingBot: CMakeFiles/MK100TradingBot.dir/src/Logger/Logger.cpp.o
MK100TradingBot: CMakeFiles/MK100TradingBot.dir/build.make
MK100TradingBot: CMakeFiles/MK100TradingBot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/bytebeem/Desktop/MK100/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable MK100TradingBot"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MK100TradingBot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MK100TradingBot.dir/build: MK100TradingBot
.PHONY : CMakeFiles/MK100TradingBot.dir/build

CMakeFiles/MK100TradingBot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MK100TradingBot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MK100TradingBot.dir/clean

CMakeFiles/MK100TradingBot.dir/depend:
	cd /home/bytebeem/Desktop/MK100/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bytebeem/Desktop/MK100 /home/bytebeem/Desktop/MK100 /home/bytebeem/Desktop/MK100/build /home/bytebeem/Desktop/MK100/build /home/bytebeem/Desktop/MK100/build/CMakeFiles/MK100TradingBot.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/MK100TradingBot.dir/depend

