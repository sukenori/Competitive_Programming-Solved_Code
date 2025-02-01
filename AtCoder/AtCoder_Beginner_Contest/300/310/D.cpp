#include<bits/stdc++.h>
using namespace std;
int N,T,M;
int A[45],B[45],t[11];
int a=0;
void f(int i,int m){
  if(i>N){
    for(int j=0;j<M;j++)if(t[A[j]]==t[B[j]])return;
    if(m==T)a++; return;
  }
  for(int j=1;j<=m+1;j++){
    t[i]=j; if(j<=m)f(i+1,m); else f(i+1,m+1);
  }
}
int main(){
  cin>>N>>T>>M;
  for(int i=0;i<M;i++)cin>>A[i]>>B[i];
  f(1,0); cout<<a<<endl;
}