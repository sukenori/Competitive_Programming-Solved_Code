#include<bits/stdc++.h>
using namespace std;
int N,M;
vector<int>G[200001];
int ind[200001],A[200001];
int main(){
  cin>>N>>M;
  int X,Y; for(int i=0;i<M;i++){cin>>X>>Y;
    G[X].push_back(Y); ind[Y]++;
  }
  queue<int>q;
  for(int i=1;i<=N;i++)if(!ind[i])q.push(i);
  int i=0; while(q.size()){
    if(q.size()>1){cout<<"No"<<endl; exit(0);}
    int j=q.front(); q.pop(); A[j]=++i;
    for(int k:G[j])if(!--ind[k])q.push(k);
  }
  cout<<"Yes"<<endl;
  for(int i=1;i<=N;i++)cout<<A[i]<<" \n"[i==N];
}