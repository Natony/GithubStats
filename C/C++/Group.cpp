#pragma once
#include "Family.cpp"

class Group
{
private:
    string nameGr;
    vector <Family> f;
public:
    Group(){}
    Group(string nameGr, vector<Family> f){
        this->nameGr = nameGr;
        this->f = f;
    }
    string getNameGr(){
        return nameGr;
    }
    int getNumberFamily(){
        return f.size();
    }
    vector <Family> getF(){
        return f;
    }
    static double avgAgeGroup(Group v){
        vector<Family> F(v.getF());
        double sum = 0;
        int n = 0;
        for(int i = 0; i < F.size(); i++)
        {
            vector<People> P(F[i].getP());
            for(int j = 0; j < P.size(); j++){
                sum += P[j].getAge();
            }
            n += P.size();
        }
        return sum / n;
    }
    static vector<People> getPeopleHaveNotJob(Group g){
        vector<Family> F(g.getF());
        vector<People> v;
        for(int i = 0; i < F.size(); i++)
        {
            vector<People> P(F[i].getP());
            for(int j = 0; j < P.size(); j++){
                if(P[j].getJob == ""){
                    v.push_back(P[ij]);
                }
            }
        }
        return v;
    }
	void display()
	{
		cout << "Name Group " << nameGr << endl;
		for (int i = 0; i < f.size(); i++)
		{
			f[i].display();
		}
	}
};