#include<bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0;i<n;i++)
int N,M;
int cx[101],cy[101],cr[101];
int fx[101],fy[101];
int main(){
  cin>>N>>M;
  rep(i,N)cin>>cx[i]>>cy[i]>>cr[i];
  rep(i,M)cin>>fx[i]>>fy[i];
  double a=200*200*2;
  if(!M)rep(i,N)a=min(a,(double)cr[i]);
  rep(i,M)rep(j,N){int dx=fx[i]-cx[j],dy=fy[i]-cy[j];
  a=min(a,sqrt(dx*dx+dy*dy)-cr[j]);
  }
  rep(i,M)rep(j,i){int dx=fx[i]-fx[j],dy=fy[i]-fy[j];
  a=min(a,sqrt(dx*dx+dy*dy)/2);
  }
  cout<<fixed<<setprecision(15)<<a<<endl;
}