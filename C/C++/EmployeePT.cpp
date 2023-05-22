    #include "Person.cpp"

    class EmployeePT : public Person
    {
    private:
        int hour;
        long money;
    public:
        EmployeePT():Person(){}
        EmployeePT(string name, int age, string add, string tel, string sex, int hour, long money):
            Person(name, age, add, tel) ,hour(hour), money(money){}
        int getHour(){
            return hour;
        }
        long getMoney(){
            return money;
        }
        virtual void display(){
            cout << "Employee Part Time" << endl;
            Person::display();
            cout << "Hour: " << hour << endl;
            cout << "Money: " << money << endl;
            cout << "Salary: " << salary() << endl;
        }
        long salary(){
            return long(hour) * money;
        }
        static vector<EmployeePT> getMaxSalary(vector<EmployeePT> pt){
            long max = pt[0].salary();
            vector<EmployeePT> v;
            for(int i = 1; i < pt.size(); i++){
                if(pt[i].salary() > max){
                    max = pt[i].salary();
                }
            }
            for(int i = 0; i < pt.size(); i++){
                if(pt[i].salary() == max){
                v.push_back(pt[i]);
                }
            }
            return v;        
        }
    };