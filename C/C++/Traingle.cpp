#include "Point.cpp"

class Traingle : public Point{
private:
    Point A;
    Point B;
    Point C;
public:
    Traingle(){}
    Traingle(Point A, Point B, Point C){
        this->A = A;
        this->B = B;
        this->C = C;
    }
    void setA(Point A){
        this->A = A;
    }
    Point getA(){
        return A;
    }
    void setB(Point B){
        this->B = B;
    }
    Point getB(){
        return B;
    }
    void setC(Point C){
        this->C = C;
    }
    Point getC(){
        return C;
    }
    double perimeter(){
        return A.distance(B) + A.distance(C) + B.distance(C);
    }
    double area(){
        return abs((B.x - A.x) * (C.y - A.y) - (C.x - A.x) * (B.y - A.y)) * 0.5;
    }
    Point center(){
        return Point((A.x + B.x + C.x)/ 3, (A.y + B.y + C.y)/ 3)
    }
	bool isTraingle()
	{
		double a = A.distance(B);
		double b = B.distance(C);
		double c = C.distance(A);
		if (a + b > c && a + c > b && b + c > a && a > 0 && b > 0 && c > 0)
		{
			return true;
		}
		return false;
	}
	void display()
	{
		A.display();
		B.display();
		C.display();
	}
};