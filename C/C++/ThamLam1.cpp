#include <iostream>
#include <stdio.h>
#include <cstring>
#include <math.h>
#include <conio.h>

using namespace std;

typedef struct 
{
    char loaido;
    float trongluong;
    float giatri;
    float dongia;
    int soluong;
} DoVat;

void TinhDonGia(DoVat sp[], int n)
{
    for (int i = 0; i < n; i++)
    {
        sp[i].dongia = sp[i].giatri / sp[i].trongluong;
    }
}

void Print(DoVat sp[], int n)
{
    for(int i = 0; i < n; i++){
    cout << sp[i].loaido << " " << sp[i].dongia << " " << sp[i].trongluong << " " << sp[i].giatri << " " << sp[i].soluong <<endl;
    }
}

void SapXep(DoVat sp[], int n)
{
    // for(int i = 1; i <= n - 1; i++)
    //    for(int j = i + 1; j <= n; j++)
    //    if (sp[i].dongia < sp[j].dongia)
    //    swap(sp[i], sp[j]);   

    for (int i=0; i<(n-1); i++) {
        int vt = i;
        for (int j = i+1; j<n; j++) {
            if (sp[j].dongia < sp[vt].dongia) {
            // if (sp[j].dongia > sp[vt].dongia) {
                vt = j;
            }
        }
        if (vt != i) {
            swap(sp[i], sp[vt]);
        }
    }

    // cout << "array after sort: " << endl;
    // Print(sp, n);

}

int Greedy(DoVat sp[], int n, float W) 
{   
    int tonggiatri = 0;

    // tinh don gia
    TinhDonGia(sp, n);

    // sap xep theo don gia
    SapXep(sp, n);

    Print(sp, n);

    // lua chon
    for (int i = n - 1; i >=0 ; i--){ 
        sp[i].soluong = (int)(W / sp[i].trongluong);
        W -= sp[i].soluong * sp[i].trongluong;
        tonggiatri += sp[i].soluong * sp[i].giatri;
    }
    return tonggiatri;
}
/*void Nhap(DoVat loaido[], DoVat trongluong, DoVat giatri)
{
    cin >> loaido;
    int n = (char)loaido;
    for (int i = 0; i < n; i++)
    {
        cin >> loaido[i].trongluong;
        cin >> loaido[i].giatri;
    }
}*/

int main()
{   
    DoVat sp[4] = {
        {.loaido = 'A', .trongluong = 15, .giatri = 30},
        {.loaido = 'B', .trongluong = 10, .giatri = 25}, 	
        {.loaido = 'C', .trongluong = 2, .giatri = 2}, 
        {.loaido = 'D', .trongluong = 4, .giatri = 6}, 
    }; 
    int n = 4;
    // int n = sizeof(sp)/sizeof(DoVat);
    float W = 37;

    int tt = Greedy(sp, n, W);

    cout << "result: tong gia tri lon nhat " << tt << endl;
    Print(sp, n);

    return 0;
}