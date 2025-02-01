#include<bits/stdc++.h>
using namespace std;
int N;
vector<int64_t>c[300001];
int main(){
  cin>>N;
  int64_t A; for(int64_t i=0;i<N;i++){
    cin>>A; int n=c[A].size();
    if(n)c[A][n-1]=i-c[A][n-1]-1;
    c[A].push_back(i);
  }
  int64_t a=0; for(int i=1;i<=N;i++){
    int64_t n=c[i].size()-1;
    for(int64_t j=0;j<n;j++)a+=(j+1)*c[i][j]*(n-j);
  }
  cout<<a<<endl;
}