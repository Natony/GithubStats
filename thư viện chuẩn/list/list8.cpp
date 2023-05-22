#include <iostream>
#include <list>

using namespace std;

list<int> removeElements(list<int> linkedList, int n) {
	linkedList.remove(n);
    return linkedList;
}    

int main()
{
    list<int> l = {2, 5, 6, 5};
    list<int> lst = removeElements(l, 5);
    for (std::list<int>::iterator it=lst.begin(); it != lst.end(); ++it)
        std::cout << *it << ' ' ;
    
    cout <<endl;

    return 0;
}