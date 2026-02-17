#include<bits/stdc++.h>
using namespace std;
int main(){
  vector<int>n,t,td; int ni;
  while(cin>>ni,ni)n.push_back(ni);
  int m=*max_element(begin(n),end(n));
  int i=1,ti; do{
    ti=i*(i+1)*(i+2)/6;
    t.push_back(ti); if(ti%2)td.push_back(ti); i++;
  }while(ti<=m);
  int d[m+1]{}; fill(*&d+1,*&d+m+1,1e6);
  for(int ti:t)for(int j=ti;j<=m;j++)d[j]=min(d[j],d[j-ti]+1);
  int dd[m+1]{}; fill(*&dd+1,*&dd+m+1,1e6);
  for(int tdi:td)for(int j=tdi;j<=m;j++)dd[j]=min(dd[j],dd[j-tdi]+1);
  for(int ni:n)cout<<d[ni]<<' '<<dd[ni]<<endl;
}