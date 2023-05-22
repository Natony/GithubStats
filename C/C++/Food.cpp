#include <iostream>
#include <vector>
#pragma once

using namespace std;

class Food{
private:
    string name;
    double price;
public:
    Food(){}
    Food(string name, double price){
        this->name = name;
        this->price = price;
    }
    void setName(string name){
        this->name = name;
    }
    string getName(){
        return name;
    }
    void setPrice(double price){
        this->price = price;
    }
    double getPrice(){
        return price;
    }
};