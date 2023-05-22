#include <iostream>
#include <stack>

using namespace std;

int main()
{

    stack <int> s;
    long t;
    long n;
    cin >> t;
    
    while (t--)
    {
        int op;
        cin >> op;
        
        switch(op) {
            case 1:
                cin >> n;
                s.push(n);
                break;
                
            case 2:
                s.pop();
                break;
                
            case 3:
                if (!s.empty()) {
                    cout << s.top() << endl;
                }
                else {
                    cout << "Empty!" << endl;
                }
                break;
                
            default:
                cout << "unknow option" << endl;
                break;
        }
    }   
}