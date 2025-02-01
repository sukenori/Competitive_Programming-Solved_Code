#include<bits/stdc++.h>
using namespace std;
double a,b,x;
int main(){
  cin>>a>>b>>x;
  cout<<fixed<<setprecision(10)
  <<atan((x/a)*2/b>a?
  (b-((x/a)*2/a-b))/a:b/((x/a)*2/b))
  *(180/M_PI)<<endl;
}