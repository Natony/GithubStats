#pragma once
#include <iostream>
#include <vector>
using namespace std;
class Score
{
protected:
	double math;
	double literature;
	double english;
public:
	Score(){}
	Score(double math, double literature, double english)
	{
		this->math = math;
		this->literature = literature;
		this->english = english;
	}
	double getMath()
	{
		return math;
	}
	double getLiterature()
	{
		return literature;
	}
	double getEnglish()
	{
		return english;
	}
	virtual double pointA()
	{
		return 0;
	}
	virtual double pointB()
	{
		return 0;
	}
	virtual double pointC()
	{
		return 0;
	}
	virtual double pointD()
	{
		return 0;
	}
	virtual double avgPoint() = 0;
	virtual void display()
	{
		cout << "Avg = " << avgPoint() << endl;
	}
	static double getMaxAvg(vector<Score*> vt)
	{
		double max = vt[0]->avgPoint();
		for(int i = 1; i < vt.size(); i++)
		{
			if(vt[i]->avgPoint() > max)
			{
				max = vt[i]->avgPoint();
			}
		}
		return max;
	}
	static double getMinAvg(vector<Score*> vt)
	{
		double min = vt[0]->avgPoint();
		for(int i = 1; i < vt.size(); i++)
		{
			if(vt[i]->avgPoint() < min)
			{
				min = vt[i]->avgPoint();
			}
		}
		return min;
	}
	bool isPass()
	{
		if(avgPoint() > 5)
		{
			return true;
		} 
		else
		{
			return false;
		}
	}
	static double getMaxPointA(vector<Score*>vt)
	{
		double max = vt[0]->pointA();
		for (int i = 1; i < vt.size(); i++)
		{
			if (vt[i]->pointA() > max)
			{
				max = vt[i]->pointA();
			}
		}
		return max;
	}
	static double getMaxPointB(vector<Score*> vt)
	{
		double max = vt[0]->pointB();
		for(int i = 1; i < vt.size(); i++)
		{
			if(vt[i]->pointB() > max)
			{
				max = vt[i]->pointB();
			}
		}
		return max;
	}
	static double getMaxPointC(vector<Score*> vt)
	{
		double max = vt[0]->pointC();
		for(int i = 1; i < vt.size(); i++)
		{
			if(vt[i]->pointC() > max)
			{
				max = vt[i]->pointC();
			}
		}
		return max;
	}
	static double getMaxPointD(vector<Score*> vt)
	{
		double max = vt[0]->pointD();
		for(int i = 1; i < vt.size(); i++)
		{
			if(vt[i]->pointD() > max)
			{
				max = vt[i]->pointD();
			}
		}
		return max;
	}
};
