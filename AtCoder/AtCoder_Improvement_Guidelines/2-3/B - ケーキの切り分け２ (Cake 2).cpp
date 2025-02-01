#include<bits/stdc++.h>
using namespace std;
int A[4001]{};
int64_t p[4001][4001]{};
int main(){
  int N; cin>>N;
  for(int i=1;i<=N;i++)cin>>A[i],A[N+i]=A[i];
  for(int d=1;d<=N;d++)for(int l=1;l<=N*2+1-d;l++){int r=l+d-1;
    if((N-d)%2)p[l][r]=A[l]>A[r]?p[l+1][r]:p[l][r-1];
    else p[l][r]=max(p[l+1][r]+A[l],p[l][r-1]+A[r]);
  }
  int64_t m=0; for(int l=1;l<=N;l++)m=max(m,p[l][l+N-1]);
  cout<<m<<endl;
}