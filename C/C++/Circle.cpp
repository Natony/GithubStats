#include "Geometry.cpp"

class Circle : public Geometry{
private:
    int r;
public:
    Circle(){}
    Circle(int r):r(r){}
    double perimeter(){
        return 3.14 * 2 * r;
    }
    double area(){
        return 3.14 * r * r;
    }
}