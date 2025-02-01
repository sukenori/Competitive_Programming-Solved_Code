#include<bits/stdc++.h>
using namespace std;
int N,M;
vector<int>G[51];
int d[51];
int main(){
  cin>>N>>M;
  int A,B; for(int i=0;i<M;i++){
    cin>>A>>B; G[A].push_back(B); d[B]++;
  }
  queue<int>q; for(int i=1;i<=N;i++)if(d[i]==0)q.push(i);
//  while(q.size()){
//  }
  if(q.size()==1){int a=q.front(); cout<<a<<endl;}
  else cout<<-1<<endl;
}