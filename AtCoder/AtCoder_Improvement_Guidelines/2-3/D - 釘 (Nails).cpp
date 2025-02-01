#include<bits/stdc++.h>
using namespace std;
#define rep(i,f,t) for(int i=f;i<=t;i++)
int N,M;
int P[5003][5003]{};
int main(){
  cin>>N>>M;
  int A,B,X; rep(i,1,M){cin>>A>>B>>X;
    P[A][B]++; P[A][B+1]--;
    P[A+X+1][B]--; P[A+X+1][B+X+2]++;
    P[A+X+2][B+1]++; P[A+X+2][B+X+2]--;
  }
rep(i,1,N+2)rep(j,1,N+2)P[i][j]+=P[i][j-1];
rep(i,1,N+2)rep(j,1,N+2)P[i][j]+=P[i-1][j];
rep(i,1,N+2)rep(j,1,N+2)P[i][j]+=P[i-1][j-1];
int c=0; rep(i,1,N)rep(j,1,N)c+=P[i][j]>0;
  cout<<c<<endl;
}