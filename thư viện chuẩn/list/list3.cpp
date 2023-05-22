#include <iostream>
#include <list>

using namespace std;

list<int> deleteFrontBack(list<int> l) {
	l.pop_back();
    l.pop_front();
    return l;
}

int main()
{
    
    list<int> l = {1,2,3,4,5,6,7};
    list<int> lst = deleteFrontBack(l);
    for (std::list<int>::iterator it=lst.begin(); it != lst.end(); ++it)
        std::cout << ' ' << *it;
    cout <<endl;
    return 0;
}
