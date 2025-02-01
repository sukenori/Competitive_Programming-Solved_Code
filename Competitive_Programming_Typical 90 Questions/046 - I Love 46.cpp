#include<bits/stdc++.h>
using namespace std;
int N;
int64_t c[3][46];
int main(){
  cin>>N; int n;
  for(int i=0;i<3;i++)for(int j=0;j<N;j++){cin>>n; c[i][n%46]++;}
  int64_t a=0;
  for(int i=0;i<46;i++)for(int j=0;j<46;j++)for(int k=0;k<46;k++)
    if((i+j+k)%46==0)a+=c[0][i]*c[1][j]*c[2][k];
  cout<<a<<endl;
}