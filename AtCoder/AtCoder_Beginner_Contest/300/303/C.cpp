#include<bits/stdc++.h>
using namespace std;
set<pair<int,int>> xy;
int main(){
  bool f=1;
  int n,m,h,k;
  string s;
  cin>>n>>m>>h>>k>>s;
for(int i=0;i<m;i++){
  int x,y;cin>>x>>y;
  xy.insert({x,y});
}
int x,y;x=y=0;
for(int i=0;i<n;i++)
 { char si=s[i];
if(si=='R')x++;
if(si=='L')x--;
if(si=='U')y++;
if(si=='D')y--;
h--;
if(xy.count({x,y})&&h<k){h=k;xy.erase({x,y});}
if(h==0&&i<n-1)f=0;
}
if(f==1)cout<<"Yes"<<endl;
else cout<<"No"<<endl;
}