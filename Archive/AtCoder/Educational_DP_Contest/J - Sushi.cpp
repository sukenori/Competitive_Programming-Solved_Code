#include<bits/stdc++.h>
using namespace std;
int N;
double m[301][301][301]{};
double e(int i,int j,int k){
  if(m[i][j][k])return m[i][j][k];
  else if(i==0&&j==0&&k==0)return m[i][j][k]=0.0;
  else{m[i][j][k]=N;
    if(i)m[i][j][k]+=e(i-1,j,k)*i;
    if(j)m[i][j][k]+=e(i+1,j-1,k)*j;
    if(k)m[i][j][k]+=e(i,j+1,k-1)*k;
    m[i][j][k]/=(i+j+k);
    return m[i][j][k];
  }
}
int main(){
  cin>>N;
  int a[4]{},ai;
  for(int i=0;i<N;i++){cin>>ai; a[ai]++;}
  cout<<fixed<<setprecision(15)<<e(a[1],a[2],a[3])<<endl;
}