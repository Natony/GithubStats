#include <iostream>
#include <list>

using namespace std;

list<int> changeValue(list<int> l, int first, int last) {
	list<int>::iterator it1 = l.begin();
    advance(it1, first - 1);
    list<int>::iterator it2 = l.begin();
    advance(it2, last);
    l.erase(it1, it2);
    return l;
}

int main()
{
    list<int> l = {1, 2, 3, 4, 5, 6};
    int first = 2;
    int last = 4;
    list<int> lst = changeValue(l,first,last);
    for (std::list<int>::iterator it=lst.begin(); it != lst.end(); ++it)
    std::cout << ' ' << *it;
    cout <<endl;
}
