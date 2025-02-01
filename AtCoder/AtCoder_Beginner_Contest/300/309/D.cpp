#include<bits/stdc++.h>
using namespace std;
int N1,N2,M;
vector<int>e[300001];
int n[300001];
int main(){
  cin>>N1>>N2>>M;
  int a,b; for(int i=0;i<M;i++){
    cin>>a>>b; e[a].push_back(b); e[b].push_back(a);
  }
  fill(n+1,n+N1+N2+1,-1);
  for(int i:(vector<int>){1,N1+N2}){
    queue<int>q; q.push(i); n[i]=0;
    while(q.size()){
      int j=q.front(); q.pop();
      for(int k:e[j]){
        if(n[k]==-1){n[k]=n[j]+1; q.push(k);}
      }
    }
  }
  cout<<*max_element(n+1,n+N1+1)
  +*max_element(n+N1+1,n+N1+N2+1)+1<<endl;
}