#include<bits/stdc++.h>
using namespace std;
int N,M;
int A[200000],B[200000];
set<int>s;
int main(){
  cin>>N>>M;
  for(int i=0;i<N;i++){cin>>A[i]; s.insert(A[i]);}
  for(int i=0;i<M;i++){cin>>B[i]; s.insert(B[i]+1);}
  sort(A,A+N); sort(B,B+M);
  for(int si:s){
    if(upper_bound(A,A+N,si)-A>=B+M-lower_bound(B,B+M,si)){
      cout<<si<<endl; exit(0);
    }
  }
}