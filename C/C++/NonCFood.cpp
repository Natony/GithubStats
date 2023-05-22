#include "Food.cpp"

class NonCFood : public Food{
private:
    double weight;
public:
    NonCFood(){}
    NonCFood(string name, double price, double weight):Food(name, price){
        this->weight = weight;
    }
    void setWeight(double weight){
        this->weight = weight;
    }
    double getWeight(){
        return weight;
    }
    static void sorWeight(vector<NonCFood>& vt){
        for(int i = 0; i < vt.size();i++){
            for(int j = i + 1; i < vt.size(); i++){
                if(vt[i].weight > vt[j].weight){
                    swap(vt[i], vt[j]);
                }
            }
        }
    }
    void display(){
        cout << "Name: " << Food::getName() << endl;
        cout << "Price: " << Food::getPrice() << endl;
        cout << "Weight: " << this->weight << endl;
    }
};