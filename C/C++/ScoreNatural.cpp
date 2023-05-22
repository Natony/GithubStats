#pragma once
#include "Score.cpp"
class ScoreNatural : public Score
{
private:
    double physic;
    double chemistry;
    double biology;
public:
    ScoreNatural(){}
    ScoreNatural(double math, double literature, double english, double physic, double chemistry, double biology)
        :Score(math, literature, english), physic(physic), chemistry(chemistry), biology(biology){}
    
    double getPhysic()
    {
        return physic;
    }
    double getChemistry()
    {
        return chemistry;
    }
    double getBiology()
    {
        return biology;
    }
    double PointA()
    {
        return math + physic + chemistry;
    }
    double PointB()
    {
        return math + biology + chemistry;
    }
    double pointNatural()
    {
        return physic + chemistry + biology;
    }
    double avgPoint()
    {
        return (math + literature + english + physic + chemistry + biology) / 6;
    }
};