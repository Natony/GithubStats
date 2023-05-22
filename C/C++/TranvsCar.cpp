#include <iostream>
#include <vector>

using namespace std;

class Transport{
private:
    string manufacturer;
    string name;
    int year;
    int speed;
public:
    Transport(){}
    Transport(string manufacturer, string name, int year, int speed) : 
        manufacturer(manufacturer), name(name), year(year), speed(speed) {}
    string getManufacturer(){
        return manufacturer;
    }
    string getName(){
        return name;
    }
    int getYear(){
        return year;
    }
    int getSpeed(){
        return speed;
    }
    void display(){
        cout << "Manufacturer: " << manufacturer <<endl;
        cout << "Name: " << name << endl;
        cout << "Year Of Manufacturer: " << year <<endl;
        cout << "Speed: " << speed << endl;
    }
};

class Car : public Transport
{
private:
    int numberSeat;
    string engineType;
public:
    Car(){}
    Car(string manufacturer, string name, int year, int speed, int numberSeat, string engineType): 
        Transport(manufacturer, name, year, speed), numberSeat(numberSeat), engineType(engineType){}
    int getNumberSeat(){
        return numberSeat;
    }
    string getEngineType(){
        return engineType;
    }
    double getSpeedBasic(){
        return getSpeedBasic() / numberSeat;
    }
    void display(){
        Transport::display();
        cout << "Number Seat: " << numberSeat << endl;
        cout << "Engine Type: " << engineType << endl;
        cout << "Speed Basic: " << getSpeedBasic() <<endl;

    }
    static vector<Car> getCarHaveMaxSpeedBasic(vector<Car> vt){
        vector<Car> v;
        double maxspeed  = vt[0].getSpeedBasic();
        for(int i = 0; i < vt.size(); i++){
            if(vt[i].getSpeedBasic() > maxspeed){
                maxspeed = vt[i].getSpeedBasic();
            }
        }
        for(int i = 0; i < vt.size(); i++){
            if(vt[i].getSpeedBasic() == maxspeed){
                v.push_back(vt[i]);
            }
        }
        return v;
    }
    static vector<Car> getCarHaveMaxSeat(vector<Car> vt){
        vector<Car> v;
        double maxseat  = vt[0].getNumberSeat();        
        for(int i = 0; i < vt.size(); i++){
            if(vt[i].getNumberSeat() > maxseat){
                maxseat = vt[i].getNumberSeat();           
            }
        }
        for(int i = 0; i < vt.size(); i++){
            if(vt[i].getNumberSeat() == maxseat){
                v.push_back(vt[i]);
            }
        }
        return v;
    }
};

int main(){
    Car Vin("VietNam", "VinFast", 2021, 300, 4, "diesel");
    Vin.display();

    return 0;
}