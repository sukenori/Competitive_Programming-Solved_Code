#include<bits/stdc++.h>
using namespace std;
int N,M;
int A[100000],B[100000];
int p[100001]; int64_t s[100001];
int r(int i){return p[i]==i?i:i=r(p[i]);}
int main(){
  cin>>N>>M;
  for(int i=0;i<M;i++)cin>>A[i]>>B[i];
  for(int i=1;i<=N;i++){p[i]=i; s[i]=1;}
  int64_t a[M+1]; a[M]=(int64_t)N*(N-1)/2;
  for(int i=M;i>=1;i--){
    if(i<M){a[i]=a[i+1];
      int rA=r(A[i]),rB=r(B[i]);
      if(rA!=rB){
        a[i]-=(int64_t)s[rA]*s[rB];
        if(s[rA]>=s[rB]){p[rB]=rA; s[rA]+=s[rB];}
        else{p[rA]=rB; s[rB]+=s[rA];}
      }
    }
  }
  for(int i=1;i<=M;i++)cout<<a[i]<<endl;
}