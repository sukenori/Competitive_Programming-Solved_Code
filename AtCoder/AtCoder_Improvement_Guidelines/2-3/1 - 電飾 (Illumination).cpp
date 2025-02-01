#include<bits/stdc++.h>
using namespace std;
int N;
int main(){
  cin>>N;
  vector<pair<int,int>>p;
  for(int i=1;i<=N;i++){
    int b; cin>>b; auto pe=p.end()-1;
    int f; if((i%2&&b)||((!(i%2))&&(!b)))f=1; else f=0;
    if(i==1||(*pe).first!=f)p.push_back({f,1});
    else (*pe).second++;
  }
  int s=0;
  if(p.size()==1)s=p[0].second;
  else if(p.size()==2)s=p[0].second+p[1].second;
  else for(int i=0;i<(int)p.size()-1;i++)
    s=max(s,p[i].second+p[i+1].second+p[i+2].second);
  cout<<s<<endl;
}