#ifndef MARKOVCHAIN_HPP
#define MARKOVCHAIN_HPP

#include <vector>
#include <string>
#include <algorithm>

class MarkovChain {
public:
    MarkovChain(const std::vector<std::string>& states);
    
    void train(const std::vector<std::string>& historicalData);
    std::string predictNextState(const std::string& currentState);
    void printTransitionMatrix() const;

private:
    std::vector<std::string> states;
    std::vector<std::vector<double>> transitionMatrix;

    int getStateIndex(const std::string& state) const;
};

#endif /
