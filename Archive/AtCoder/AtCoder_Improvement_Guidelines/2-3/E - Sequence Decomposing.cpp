#include<bits/stdc++.h>
using namespace std;
const int Nmax=1e5;
int N,dp[Nmax];
int main(){
  cin>>N;
  fill(dp,dp+N,1);
  int A; for(int i=0;i<N;i++){cin>>A;
    *upper_bound(dp,dp+N,-A)=-A;
  }
  cout<<lower_bound(dp,dp+N,1)-dp<<endl;
}