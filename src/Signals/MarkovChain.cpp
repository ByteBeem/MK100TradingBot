#include "include/MarkovChain.hpp"
#include <stdexcept>
#include <numeric>
#include <iostream>


MarkovChain::MarkovChain(const std::vector<std::string>& states)
    : states(states), transitionMatrix(states.size(), std::vector<double>(states.size(), 0.0)) {}


void MarkovChain::train(const std::vector<std::string>& historicalData) {
    if (historicalData.size() < 2) {
        throw std::invalid_argument("Insufficient historical data for training.");
    }

   
    std::vector<std::vector<int>> countMatrix(states.size(), std::vector<int>(states.size(), 0));

   
    for (size_t i = 0; i < historicalData.size() - 1; ++i) {
        int fromState = getStateIndex(historicalData[i]);
        int toState = getStateIndex(historicalData[i + 1]);
        countMatrix[fromState][toState]++;
    }

   
    for (size_t i = 0; i < states.size(); ++i) {
        int totalTransitions = std::accumulate(countMatrix[i].begin(), countMatrix[i].end(), 0);
        if (totalTransitions > 0) {
            for (size_t j = 0; j < states.size(); ++j) {
                transitionMatrix[i][j] = static_cast<double>(countMatrix[i][j]) / totalTransitions;
            }
        }
    }
}


std::string MarkovChain::predictNextState(const std::string& currentState) {
    int stateIndex = getStateIndex(currentState);
    if (stateIndex == -1) {
        throw std::invalid_argument("Invalid current state: " + currentState);
    }

  
    double randNum = static_cast<double>(rand()) / RAND_MAX;
    double cumulativeProbability = 0.0;

    for (size_t i = 0; i < states.size(); ++i) {
        cumulativeProbability += transitionMatrix[stateIndex][i];
        if (randNum <= cumulativeProbability) {
            return states[i];
        }
    }

    
    return states.back();
}


int MarkovChain::getStateIndex(const std::string& state) const {
    auto it = std::find(states.begin(), states.end(), state);
    if (it != states.end()) {
        return std::distance(states.begin(), it);
    }
    return -1; 
}


void MarkovChain::printTransitionMatrix() const {
    std::cout << "Transition Matrix: " << std::endl;
    for (const auto& row : transitionMatrix) {
        for (double prob : row) {
            std::cout << prob << " ";
        }
        std::cout << std::endl;
    }
}
