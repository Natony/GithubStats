#include <iostream>
#include <stack>
#include <vector>
#include <cstring>

using namespace std;

int reversals(std::string exp)
{
    const auto len = exp.length();

    if (len %2){
        return -1;
    }

    std::stack<char> st;

    for(const auto c: exp) {
        if (c == '}') {
            if(!st.empty() && st.top() == '{') {
                st.pop();
                continue;
            }    
        } 
        
        st.push(c);       
    }

    int ret = 0;

    while( !st.empty()) {
        const auto t1 = st.top();
        st.pop();
        const auto t2 = st.top();
        st.pop();

        if(t1 != t2) {
            ret ++;
        }
        ret++;
    }

    return ret;
}

int main()
{
    char exp[] = "}{";
    int c = reversals(exp);
    cout << c;

    return 0;

}