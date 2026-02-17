#include<bits/stdc++.h>
using namespace std;
int W,H,N,A,B;
int p[200000],q[200000];
int a[200000],b[200000];
map<pair<int,int>,int>m;
int main(){
  cin>>W>>H>>N;
  for(int i=0;i<N;i++)cin>>p[i]>>q[i];
  cin>>A; for(int i=0;i<A;i++)cin>>a[i];
  cin>>B; for(int i=0;i<B;i++)cin>>b[i];
  for(int i=0;i<N;i++){
    int ai=lower_bound(a,a+A,p[i])-a;
    int bi=lower_bound(b,b+B,q[i])-b;
    m[{ai,bi}]++;
  }
  set<int>s; for(auto mi:m)s.insert(mi.second);
  cout<<(m.size()==(A+1)*(B+1)?*s.begin():0)
  <<' '<<*(prev(s.end(),1))<<endl;
}