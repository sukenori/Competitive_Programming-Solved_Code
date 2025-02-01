#include<bits/stdc++.h>
using namespace std;
int c[101][4]{};
int main(){
  int N,K,m=1e4; cin>>N>>K;
  int d[N+1]{}; int A,B; while(K--){cin>>A>>B; d[A]=B;}
  c[0][0]=1;
  for(int i=1;i<=N;i++){
    int s=0; for(int ci:c[i-1])s+=ci;
    for(int j:{1,2,3})if(d[i]==0||d[i]==j){
      c[i][j]=s;
      if(c[i-1][j]>0){
        ((c[i][j]-=c[i-2][j])%=m)+=m;
        ((c[i-1][j]-=c[i-2][j])%=m)+=m;
      }
    }
  }
  cout<<(c[N][1]+c[N][2]+c[N][3])%m<<endl;
}