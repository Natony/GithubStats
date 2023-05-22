#include <iostream>
#include <list>

using namespace std;

int sumOfAllElements(list<int> linkedList)
{
	int sum = 0;
	for (std::list<int>::iterator it=linkedList.begin(); it != linkedList.end(); ++it)
	{
    	sum += *it;
    }
	return sum;
}

int main()
{
    list<int> l = {4, 6, 2, 4};    
    for (std::list<int>::iterator it=l.begin(); it != l.end(); ++it)
        std::cout << *it << ' ' ;
    
    cout <<endl;
    int a = sumOfAllElements(l);
    cout << a;

    cout <<endl;
}
