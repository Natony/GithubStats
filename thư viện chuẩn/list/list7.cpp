#include <iostream>
#include <list>

using namespace std;

list<int> initList(int n)
{
	list<int> res;
	for (int i = n; i >= 1; i--) {
		res.push_front(i);
	}
	return res;
}


int main()
{
    list<int> l = initList(4);
    for (std::list<int>::iterator it=l.begin(); it != l.end(); ++it)
        std::cout << *it << ' ' ;
    
    return 0;
}
