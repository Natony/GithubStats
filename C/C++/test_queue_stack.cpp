#include <iostream>
#include <queue>
#include <stack> 
#include <cstring>

using namespace std;

// int a[] = {1,2,3,4,5};
// int S = 12;

int a[] = {3,5,5,5,5,4,3,2,1};
int S = 15;

int cal_tt(int vt1, int vt2) 
{
    int tt = 0;
    for (int i=vt1; i<=vt2; i++) {
        tt += a[i];
    }
    return tt;
}

void test_queue_stack()
{
    int n = sizeof(a)/sizeof(int);
    //cout << "n = " << n << endl;
    
    //std::queue<int> q;
    int tt = 0;
    int size = 0;
    int max = -1;
    int vt1 = 0, vt2 = 0;
    
    //for (int i=0; i<n; i++) {
    while (vt1 <= vt2 && vt1 < n && vt2 < n) {
        //q.push_back(a[i]);

        tt = cal_tt(vt1, vt2);
        cout << "tt from " << vt1 << " to " << vt2 << ": " << tt << endl;
        
        if (tt < S) {
            // continue;
            vt2++;
        }
        else if (tt == S) {
            size = vt2 - vt1 + 1;
            max = (max < size) ? size : max;
            vt2++;
        }
        else {
            // tt -= a[vt1];
            vt1++;
        }
    }
    
    std::cout << "result: " <<  max << endl;
}

void test_queue_stack2()
{
    int n = sizeof(a)/sizeof(int);
    //cout << "n = " << n << endl;
    
    queue<int> q;
    int vt = 0;
    q.push(a[vt]);
    int tt = a[0];
    vt++;
    int size = 1;
    int max = -1;
    

    while (true) {
        // cout << "tt = " << tt << endl;
        if (tt > S) {
            tt -= q.front();
            q.pop();
            size--;
        }
        else if (tt == S) {
            max = (max < size) ? size : max;
            q.push(a[vt]);
            size++;
            tt += a[vt];
            vt++;
        }
        else {
            q.push(a[vt]);
            size++;
            tt += a[vt];
            vt++;
        }

        if (vt > n) break;
    }

    cout << max << endl;
}

void test_queue_stack3()
{
    char str[] = "()(()()(()))";
    std::stack<int> s;

    for (int i=0; i<strlen(str); i++) {
        if (str[i] == '(') {
            s.push(i);
        }
        else if (str[i] == ')' ) {
            int vt1 = s.top();
            s.pop();
            cout << vt1+1 << " " << i+1 << endl;
        }
        else {
        }
    }
}
int main()
{
    test_queue_stack();
    test_queue_stack2();
    test_queue_stack3();

    return 0;
}