#include<bits/stdc++.h>
using namespace std;
int N,M,a=0;
vector<int> x(66),y(66);
void p(int i,set<int> f){
  if(i==N){
    int c=0;
    for(int j=0;j<M;j++)if(f.count(x[j])&&f.count(y[j]))c++;
    int s=f.size();
    if(c==s*(s-1)/2)a=max(a,s);
  }
  else{
    p(i+1,f);
    f.insert(i+1); p(i+1,f);
  }
}
int main(){
  cin>>N>>M;
  for(int i=0;i<M;i++)cin>>x[i]>>y[i];
  p(0,{});
  cout<<a<<endl;
}