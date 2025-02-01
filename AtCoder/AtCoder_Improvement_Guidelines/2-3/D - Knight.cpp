#include<bits/stdc++.h>
using namespace std;
int X,Y,M=1e9+7;
int main(){
  cin>>X>>Y;
  int64_t a=1,d=1;
  for(int i=1;i<=(X+Y)/3;i++)a=a*i%M;
  for(int i=1;i<=((X+Y)/3-abs(X-Y))/2;i++)d=d*i%M;
  for(int i=1;i<=((X+Y)/3-abs(X-Y))/2+abs(X-Y);i++)d=d*i%M;
  for(int i=M-2;i>0;i>>=1){
    if(i&1)a=a*d%M;
    d=d*d%M;
  }
  if((X+Y)%3!=0||abs(X-Y)>(X+Y)/3)a=0;
  cout<<a<<endl;
}