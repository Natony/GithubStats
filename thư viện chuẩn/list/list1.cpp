#include <iostream>
#include <list>

using namespace std;

list<int> initList(int n)
{
    list<int> l;
    for (int i=0; i<n; i++) {
        l.push_back(i+1);
    }
    
    return l;
}

int main()
{
    int n = 10;
    list<int> lst = initList(n);
    
    for (std::list<int>::iterator it=lst.begin(); it != lst.end(); ++it)
        std::cout << ' ' << *it;
    cout <<endl;
    
    return 0;
}
