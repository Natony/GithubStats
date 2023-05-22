#include "Food.cpp"

class CannedFood : public Food{
private:
    int numberBox;
public:
    CannedFood(){}
    CannedFood(string name, double price, int numberBox): Food(name, price){
        this->numberBox = numberBox;
    }
    void display(){
        cout << "Name: " << Food::getName() << endl;
        cout << "Price: " << Food::getPrice() << endl;
        cout << "Number Box: " << this->numberBox << endl;
    }
    void setNumberBox(){
        this->numberBox = numberBox;
    }
    int getNumberBox(){
        return numberBox;
    }
    static void sortNumberBox(vector<CannedFood>& vt){
        for(int i = 0; i < vt.size();i++){
            for(int j = i + 1; i < vt.size(); i++){
                if(vt[i].numberBox > vt[j].numberBox){
                    swap(vt[i], vt[j]);
                }
            }
        }
    }
};