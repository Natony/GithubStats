#pragma once
#include "Score.cpp"
class ScoreSocial : public Score{
private: 
	double ce;
	double geography;
	double history;
public:
    ScoreSocial(){}
	ScoreSocial(double math, double literature, double english, double ce, double geography, double history) :
		Score(math, literature, english), ce(ce), geography(geography), history(history) {}
    double getCe(){
        return ce;
    }
    double getGeography(){
        return geography;
    }
    double getHistory(){
        return history;
    }
    double pointC(){
        return literature + history + geography;
    }
    double pointSocial(){
        return literature + history + geography;
    }
    double avgPoint(){
        return (math + literature + english + ce + geography + history) / 6;
    }
};