#include<bits/stdc++.h>
using namespace std;
#define INF 2e9*2
#define rep(i,n) for(int i=0;i<n;i++)
int V,E;
int64_t D[100][100];
int main(){
  cin>>V>>E;
  rep(i,V)rep(j,V)D[i][j]=i==j?0:INF;
  int s,t,d; rep(i,E){cin>>s>>t>>d; D[s][t]=d;}
  rep(k,V)rep(i,V)rep(j,V)
    D[i][j]=min(D[i][j],D[i][k]+D[k][j]);
  rep(i,V)if(D[i][i]<0){
    cout<<"NEGATIVE CYCLE"<<endl; return 0;
  }
  rep(i,V){rep(j,V){
    if(D[i][j]<INF/2)cout<<D[i][j];
    else cout<<"INF";
    if(j<V-1)cout<<' ';
    else cout<<endl;
    }
  }
}