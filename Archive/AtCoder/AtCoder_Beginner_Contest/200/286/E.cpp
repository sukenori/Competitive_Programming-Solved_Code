#include<bits/stdc++.h>
using namespace std;
int N; int64_t A[301];
pair<int,int64_t>d[301][301];
int main(){
  cin>>N;
  for(int i=1;i<=N;i++)cin>>A[i];
  fill(d[0],d[N+1],make_pair(301,0));
  string S; for(int i=1;i<=N;i++){
    cin>>S; for(int j=1;j<=N;j++)if(S[j-1]=='Y')d[i][j]={1,-A[j]};
  }
  for(int k=1;k<=N;k++)for(int i=1;i<=N;i++)for(int j=1;j<=N;j++){
    d[i][j]=min(d[i][j],{d[i][k].first+d[k][j].first,d[i][k].second+d[k][j].second});
  }
  int Q; cin>>Q; while(Q--){
    int U,V; cin>>U>>V;
    if(d[U][V].first<301)cout<<d[U][V].first<<' '<<A[U]-d[U][V].second<<endl;
    else cout<<"Impossible"<<endl;
  }
}