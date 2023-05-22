#pragma once
#include <iostream>
#include <string>
#include <vector>

using namespace std;

class People
{
private:
    string name;
    int age;
    string job;
    string id;
public:
    People();
    People(string name, int age, string job, string id){
        this->name = name;
        this->age = age;
        this->job = job;
        this->id = id;
    }
    string getName(){
        return name;
    }
    int getAge(){
        return age;
    }
    string getJob(){
        return job;
    }
    string getId(){
        return id;
    }
    void display(){
        cout << "Name: " << getName() << endl;
        cout << "Age: " << getAge() << endl;
        cout << "Job: " << getJob() << endl;
        cout << "Id: " << getId() << endl;
    }
};

