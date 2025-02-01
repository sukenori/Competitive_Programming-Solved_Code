#include<bits/stdc++.h>
using namespace std;
int64_t N,P,Q,A[100];
int main(){
  cin>>N>>P>>Q;
  for(int i=0;i<N;i++)cin>>A[i];
  int64_t a=0;
  for(int i=0;i<N-4;i++)
  for(int j=i+1;j<N-3;j++)
  for(int k=j+1;k<N-2;k++)
  for(int l=k+1;l<N-1;l++)
  for(int m=l+1;m<N;m++)
  if((A[i]%P*A[j]%P*A[k]%P*A[l]%P*A[m]%P)%P==Q)a++;
  cout<<a<<endl;
}