#include <iostream>
#include <list>

using namespace std;

list<int> changeValue(list<int> l, int k, int x) {
	list<int>::iterator it = l.begin(); // it trỏ vào phần tử đầu tiên
	advance(it, k-1);
    *it = x;
    return l;
}


int main()
{
    list<int> lst = {1, 2, 3, 4, 5, 6};
    int l = 2;
    int k = 4;
    
    lst = changeValue(lst, l, k);
    
    for (std::list<int>::iterator it=lst.begin(); it != lst.end(); ++it)
        std::cout << ' ' << *it;
    cout <<endl;
    
    return 0;
}