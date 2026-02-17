#include<bits/stdc++.h>
using namespace std;
int main(){
int N; cin>>N;
int Q; cin>>Q;
vector<vector<int> > b(N+1);
vector<vector<int> > n(2*pow(10,5));
while(Q--){int q; cin>>q;
if(q==1){
  int i,j; cin>>i>>j;
  b[j].push_back(i);
n[i].push_back(j);
}
if(q==2){
int i; cin>>i;
sort(b[i].begin(),b[i].end());
for(int j=0; j<b[i].size(); j++)
cout<<b[i][j]<<" \n"[j==b[i].size()-1];
}
if(q==3){
  int i; cin>>i;
sort(n[i].begin(),n[i].end());
n[i].erase(unique(n[i].begin(),n[i].end()),n[i].end());
for(int j=0; j<n[i].size(); j++)
cout<<n[i][j]<<" \n"[j==n[i].size()-1];
}
}
}