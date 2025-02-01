#include <bits/stdc++.h>
using namespace std;

int main(){
  int a,b,s=0;
  cin >>a >>b;
  for (int i=a; i<=b; i++){
    if (i/10000==i%10 and (i%10000)/1000==(i%100)/10) s+=1;
  }
  cout <<s <<endl;
}