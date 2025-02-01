#include <bits/stdc++.h>
using namespace std;

int main(){
  int h,w;
  cin >>h >>w;
  string s0,s1,s2,c0,c1,c2;
  for (int i=0; i<h; i++){
    if (i==0) cin >>s0;
    if (i!=h-1){
      if ((i+1)%3==0) cin >>s0;
      if ((i+1)%3==1) cin >>s1;
      if ((i+1)%3==2) cin >>s2;
    }
    for (int j=0; j<w; j++){
      if (i%3==0){c0=s2; c1=s0; c2=s1;}
      if (i%3==1){c0=s0; c1=s1; c2=s2;}
      if (i%3==2){c0=s1; c1=s2; c2=s0;}
      if (c1.at(j)=='#') cout <<"#";
      else {int a=0;
        if (i!=0 && j!=0) a+=(c0.at(j-1)=='#');
        if (i!=0) a+=(c0.at(j)=='#');
        if (i!=0 && j!=w-1) a+=(c0.at(j+1)=='#');
        if (j!=0) a+=(c1.at(j-1)=='#');
        if (j!=w-1) a+=(c1.at(j+1)=='#');
        if (i!=h-1 && j!=0) a+=(c2.at(j-1)=='#');
        if (i!=h-1) a+=(c2.at(j)=='#');
        if (i!=h-1 && j!=w-1) a+=(c2.at(j+1)=='#');
        cout <<a;
      }     
        if (j==w-1) cout <<endl;
      }
    }
  }