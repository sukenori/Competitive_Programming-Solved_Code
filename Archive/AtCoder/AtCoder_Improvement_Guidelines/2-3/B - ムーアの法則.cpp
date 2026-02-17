#include<bits/stdc++.h>
using namespace std;
double P;
double f(double x){
  return x+P/pow(2,x/1.5);
}
int main(){
  cin>>P;
  double lx=0,rx=P,lm,rm;
  while(rx-lx>pow(10,-8)){
    lm=lx+(rx-lx)/3; rm=rx-(rx-lx)/3;
    f(lm)>f(rm)? lx=lm: rx=rm;
  }
  cout<<fixed<<setprecision(10)<<f(lm)<<endl;
}