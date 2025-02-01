#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  int n[N]; for(int &ni:n)cin>>ni;
  int64_t c[N-1][21]{}; c[0][n[0]]++;
  for(int i=1;i<N-1;i++)for(int j=0;j<21;j++){
      if(j+n[i]<=20&&c[i-1][j])c[i][j+n[i]]+=c[i-1][j];
      if(0<=j-n[i]&&c[i-1][j])c[i][j-n[i]]+=c[i-1][j];
    }
  cout<<c[N-2][n[N-1]]<<endl;
}