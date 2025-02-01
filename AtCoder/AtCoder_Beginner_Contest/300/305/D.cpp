#include<bits/stdc++.h>
using namespace std;
int N;
int A[200000],sA[200000];
int main(){
  cin>>N;
  for(int i=0;i<N;i++){
    cin>>A[i]; if(i>0)sA[i]=sA[i-1]+(i%2?0:A[i]-A[i-1]);
  }
  int Q; cin>>Q; while(Q--){
    int l,r; cin>>l>>r;
    int li=lower_bound(A,A+N,l)-A;
    int ri=lower_bound(A,A+N,r)-A;
    int s=0;
    s+=ri%2?sA[ri]:sA[ri]-(A[ri]-r);
    s-=li%2?sA[li]:sA[li]-(A[li]-l);
    cout<<s<<endl;
  }
}