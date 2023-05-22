// Example program
#include <iostream>
#include <string>
#include <math.h>

using namespace std;

class Point {
public:
    int x;
    int y;

    Point(): x(0), y(0) {}
    Point(int _x, int _y): x(_x), y(_y) {}
    
    friend Point operator - (Point A, Point B) {
        Point C;
        C.x = A.x - B.x;
        C.y = A.y - B.y;
        
        return C;
    }
    
    double distance(Point B) { // kc tu diem hien tai (this) -> B
        double kc = sqrt( pow(this->x - B.x, 2) + pow(this->y - B.y, 2) );
        return kc;
    }
};

class Traingle: public Point {
private:
    Point A;
    Point B;
    Point C;
    
public:
    Traingle(): A(), B(), C() {}
    Traingle(Point _A, Point _B, Point _C): A(_A), B(_B), C(_C) {}
    
    double perimeter() {
        double ab = A.distance(B);
        double bc = B.distance(C);
        double ca = C.distance(A);
        
        double cv = ab + bc + ca;
        return cv;
    }
    
    double area() {
        double p = this->perimeter()/2;
        double ab = A.distance(B);
        double bc = B.distance(C);
        double ca = C.distance(A);
        
        double area = sqrt(p*(p-ab)*(p-bc)*(p-ca));
        return area;
    }
    
    Point center() {
        Point tt;
        
        tt.x = (A.x + B.x + C.x)/3;
        tt.y = (A.y + B.y + C.y)/3;
        
        return tt;
    }
    
    bool isTraingle() {
        double ab = A.distance(B);
        double bc = B.distance(C);
        double ca = C.distance(A);
        
        if ( ((ab + bc) > ca)  && ((bc + ca) > ab) && ((ca + ab) > bc)) {
            return true;
        }
        else {
            return false;
        }
    }
};

int main()
{
    // Point   A(0, 0);
    // // Point   B(1, 0);
    // Point   B(0, 1);
    // Point   C(0, 2);
    
    Point   A(0, 0);
    Point   B(3, 0);
    Point   C(0, 3);
    
    Traingle tg(A, B, C);
    
    if (tg.isTraingle()) {
        cout << "chu vi tam giac ABC: " << tg.perimeter() << endl;
        cout << "dien tich tam giac ABC: " << tg.area() << endl;
        
        
        Point O = tg.center();
        cout << "trong tam tam giac ABC: (" << O.x << "," << O.y << ")" << endl;
    }
    else {
        cout << "3 diem A, B, C khong tao tam giac" << endl;
    }
    
    return 0;
}
