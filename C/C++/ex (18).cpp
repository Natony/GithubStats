#include <iostream>
#include <stdio.h>
#include <string.h>
#include <vector>

using namespace std;

class Author
{
private:
    string name;
    string email;
    
public:
    Author(string _name, string _email): name(_name), email(_email){}
    
    void setName(string _name) {
        name = _name;
    }
    string getName() {
        return name;
    }
    void setEmail(string _email) {
        email = _email;
    }
    string getEmail() {
        return email;
    }
};

class Book
{
private:
    string name;
    vector<Author> authors;
    double price;
    
public:
    Book(string _name, vector<Author> _authors, double _price): name(_name), authors(_authors), price(_price) {}
    
    void setName(string _name) {
        name = _name;
    }
    string getName() {
        return name;
    }
    
    void setPrice(double _price) {
        price = _price;
    }
    double getPrice() {
        return price;
    }
    
    string getAuthorNames() {
        string ret = "";
        int len  = authors.size();
        for (int i=0; i<(len - 1); i++ ) {
            ret += authors[i].getName();
            ret += ", ";
        }
        
        if (len > 0) {
            ret += authors[len-1].getName();
        }
        
        return ret;
    }
};

int main() {
    vector<Author> authors;
	authors.push_back(Author("Viet", "VietCV@codelearn.io"));
	authors.push_back(Author("Tuan", "TuanLQ7@codelearn.io"));
	authors.push_back(Author("KienNT", "KienNT@codelearn.io"));

	Book book1("C++ for Beginners", authors, 210000);
	cout << book1.getAuthorNames();	
	return 0;
}