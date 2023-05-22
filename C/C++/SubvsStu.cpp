#include <iostream>
#include <math.h>
#include <vector>
#include <string.h>

using namespace std;

class Subject{
private:
    string nameSub;
    double point;
    int numberCredit;
    long money;
public:
    Subject(){}
    Subject(string nameSub, double point, int numberCredit, long money): nameSub(nameSub), point(point), numberCredit(numberCredit), money(money) {}
    string getNameSub(){
        return nameSub;
    }
    double getPoint(){
        return point;
    }
    int getNumberCredit(){
        return numberCredit;
    }
    long getMoney(){
        return money;
    }
    void display(){
        cout << "Name Subject: " << nameSub << endl;
        cout << "Number Credit: " << numberCredit <<endl;
        cout << "Money of One Credit: " << money << endl;
    }
};
class Student : public Subject{
private:
    string id;
    string name;
    vector<Subject> s;
public:
    Student(){}
    Student(string id, string name, vector<Subject> s): id(id), name(name), s(s){}
    string getId(){
        return id;
    }
    string getName(){
        return name;
    }
    vector<Subject> getS(){
        return s;
    }
	long getSumMoney()
	{
		long sum = 0;
		for (int i = 0; i < s.size(); i++)
		{
			sum += s[i].getNumberCredit() * s[i].getMoney();
		}
		return sum;
	}
    double avgPoint(){
        double point = 0;
        int sum = 0;
        for(int i = 0; i < s.size(); i++){
            point += s[i].getNumberCredit() * s[i].getPoint();
            sum += s[i].getNumberCredit();
        }
        return point / sum;
    }
    void display(){
        cout << "Id: " << getId() <<endl;
        cout << "Name Subject: " << getName() <<endl;
        cout << "List Subject " << endl;
        for(int i = 0; i < s.size(); i++){
            s[i].display();
        }
        cout << "Sum Money Have to Pay: " << getSumMoney() << endl;
        cout << "Average Point: " << avgPoint() <<endl;
    }
};

int main(){
    vector<Subject> subject;
    Subject s1("Toan1", 7, 3, 520);
    Subject s2("Toan2", 9, 2,  520);

    subject.push_back(s1);
    subject.push_back(s2);

    Student Tin("20151230", "Tin", subject);
    Tin.display();
    
    return 0;
}