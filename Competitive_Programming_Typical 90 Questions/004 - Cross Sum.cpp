#include<bits/stdc++.h>
using namespace std;
int H,W;
int A[2001][2001],h[2001],w[2001];
int main(){
  cin>>H>>W;
  for(int i=1;i<=H;i++)for(int j=1;j<=W;j++){
    cin>>A[i][j];
    h[i]+=A[i][j]; w[j]+=A[i][j];
  }
  for(int i=1;i<=H;i++)for(int j=1;j<=W;j++){
    cout<<h[i]+w[j]-A[i][j]<<(j<W?" ":"\n");
  }
}