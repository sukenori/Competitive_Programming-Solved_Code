#include<bits/stdc++.h>
using namespace std;
const int N=1e5;
int p[N+1],pl[N+1];
int main(){
  for(int i=2;i<=N;i++){if(p[i])continue;
    else for(int j=2;j<=N/i;j++)p[i*j]=1;
  }
  for(int i=3;i<=N;i++)pl[i]=pl[i-1]+(!p[i]&&!p[(i+1)/2]);
  int Q; cin>>Q; while(Q--){
    int l,r; cin>>l>>r;
    cout<<(pl[r]-pl[l-1])<<endl;
  }
}