#ifndef RISKMANAGER_HPP
#define RISKMANAGER_HPP

class RiskManager {
public:
    RiskManager(double maxRisk, double accountBalance);

    double calculateLotSize();

private:
    double maxRisk;
    double accountBalance;
};

#endif
