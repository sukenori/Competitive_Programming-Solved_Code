#include <bits/stdc++.h>
using namespace std;
int D,G,m=10*100;
vector<int> p(10),c(10);
void f(int i,int u,int s,int a){
  if(s>=G)m=min(m,a);
  else if(i==D){
    int j=0; while(s<G){s+=(u+1)*100; j++;}
    if(j<p[u])m=min(m,a+j);
  }
  else{
    f(i+1,u,s+(i+1)*100*p[i]+c[i],a+p[i]);
    f(i+1,i,s,a);
  }
}
int main(){
  cin>>D>>G;
  for(int i=0;i<D;i++)cin>>p[i]>>c[i];
  f(0,-1,0,0);
  cout<<m<<endl;
}