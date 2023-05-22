#include "Geometry.cpp"

class Rectangle : public Geometry{
private:   
    int h;
    int w;
public:
    Rectangle(){}
    Rectangle(int h, int w): h(h), w(w){}
    double perimeter(){
        return (a + b) * 2;
    } 
    double area(){
        return a * b;
    }
};