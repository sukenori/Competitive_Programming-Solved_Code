#include<bits/stdc++.h>
using namespace std;
int main(){
int n,d; cin>>n>>d;
int x[n+1],y[n+1];
for(int i=1;i<=n;i++)cin>>x[i]>>y[i];
int dd[n+1]{};
queue<int> q; q.push(1);dd[1]=1;
while(q.size()){
  int i=q.front(); q.pop();
  for(int j=1;j<=n;j++){
    if(dd[j]==1)continue;
if(((x[i]-x[j])*(x[i]-x[j])+(y[i]-y[j])*(y[i]-y[j]))<=d*d)
{q.push(j); dd[j]=1;}
  }
}
for(int i=1;i<=n;i++)cout<<(dd[i]?"Yes":"No")<<endl;





}