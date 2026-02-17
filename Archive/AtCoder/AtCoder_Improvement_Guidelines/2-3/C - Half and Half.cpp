#include<iostream>
using namespace std;
int main(){
  int a,b,c,x,y; cin>>a>>b>>c>>x>>y;
  int ans=a*x+b*y;
  for(int i=0; i<=max(x,y); i++)
   ans=min(ans,a*(x-min(i,x))+b*(y-min(i,y))+c*2*i);
  cout<<ans<<endl;
}