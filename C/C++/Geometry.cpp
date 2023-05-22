#include <iostream>
#pragma once

using namespace std;

class Geometry{
    virtual double perimeter(){} = 0;
    virtual double area(){} = 0;
    void display(){
        cout << "Perimeter: " << perimeter() << endl;
        cout << "Area: " << area() << endl;
    }
}