#include<bits/stdc++.h>
using namespace std;
int N;
vector<int>A[100001];
int main(){
  int N; cin>>N;
  int Ai; for(int i=1;i<=N*3;i++){
    cin>>Ai;
    A[Ai].push_back(i);
  }
  set<pair<int,int>>s;
  for(int i=1;i<=N;i++)s.insert({A[i][1],i});
  for(auto si:s)cout<<si.second<<' '; cout<<endl;
}