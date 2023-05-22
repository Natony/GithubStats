#include <iostream>
#include <cmath>
#pragma once
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
    void setY(int y){
        this->y = y;
    }
    int getX(){
        return x;
    }
    int getY(){
        return y;
    }
    friend Point operator-(Point A, Point B){
        return Point(A.x - B.x, A.y - B.y);
    }
    double distance(Point B){
        return sqrt(pow(this->x - B.x, 2) + pow(this->y - B.y, 2))
    }
};