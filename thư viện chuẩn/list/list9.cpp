#include <iostream>
#include <list>

using namespace std;

list<int> removeElements(list<int> linkedList, int n) {
    for (std::list<int>::iterator it=linkedList.begin(); it != linkedList.end(); ++it){
        if(n <= *it){
            *it = n;
            it = linkedList.erase(it);
			--it;
        }
    }
    return linkedList;
}

int main()
{
    list<int> l = {1, 4, 2};
    list<int> lst = removeElements(l, 3);
    for (std::list<int>::iterator it=lst.begin(); it != lst.end(); ++it){
        cout << *it << " ";
    }
    
    return 0;
}