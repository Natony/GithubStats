#pragma once
#include <iostream>
#include <cmath>

using namespace std;

class Point{
private:
    int x;
    int y;
public:
    Point(){}
    Point(int x, int y){
        this->x = x;
        this->y = y;
    }
    void setX(int x){
        this->x = x;
    }
    int getX(){
        return x;
    }
    void setY(int y){
        this->y = y;
    }
    int getY(){
        return y;
    }
    friend Point operator-(Point A, Point B){
        return Point(A.x - B.x, A.y - B.x);
    }
    double distance(Point B){
        return sqrt(pow(this->x - B.x, 2) + pow(this->y - B.y, 2));
    }
	void display()
	{
		cout << "X = " << x << " Y = " << y << endl;
	}
};