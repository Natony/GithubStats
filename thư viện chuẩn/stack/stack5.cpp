#include <iostream>
#include <stack>
#include <vector>

using namespace std;

vector<int> stickSpan(vector<int> arr)
{
    // Tạo 1 stack làm thước đo và 1 vector chứa kết quả
    stack<int> st;
    vector<int> kq;
    int n = arr.size();
    //khởi tạo thức đo từ khoảng cách 0 
    st.push(0);
    //và khoảng cách từ thanh gỗ đầu tiên
    kq.push_back(1);
    // chạy vòng lặp for để đo từng thanh gỗ so với phía bên trái
    for (int i = 1; i < n; i++) {
        // pop stack ra (khi stack chưa trống và thanh gỗ >= thanh gỗ thước đo)
        while (!st.empty() && arr[i] >= arr[st.top()])
            st.pop();
        /*khi stack đã trống hoặc khi thanh gỗ < thanh gỗ thước đo
        *thêm khoảng cách vào vector chứa kết quả
        *khoảng cách này = i+1 nếu stack trống hoặc = i - thước đo
        */
    kq.push_back((st.empty()) ? (i + 1) : (i - st.top()));
    //thêm i vào thước đo
    st.push(i); 
    }

    return kq;
}
int main()
{
    vector<int> v = {100,80,60,70,60,75,85};
    vector<int> v1 = stickSpan(v);
    for(int i = 0; i < v1.size(); i++){
        cout << v1[i] << " ";
    }

    return 0;
}