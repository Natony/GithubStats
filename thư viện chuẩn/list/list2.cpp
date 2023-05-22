#include <iostream>
#include <list>

using namespace std;

int sumOfFirstAndLastElement(list<int> linkedList)
{
   if(linkedList.size() == 0){
        return -1;
   }
   if(linkedList.size() == 1){
        return linkedList.front();
   }
   else
        return linkedList.front() + linkedList.back();
}

int main()
{
    
    list<int> lst = {1,2,3,4,5,6,7};
    
    for (std::list<int>::iterator it=lst.begin(); it != lst.end(); ++it)
        std::cout << ' ' << *it;
    cout <<endl;
    int a = sumOfFirstAndLastElement(lst);
    cout << a;
    cout << endl;
    return 0;
}
