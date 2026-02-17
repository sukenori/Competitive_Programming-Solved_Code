#include<bits/stdc++.h>
using namespace std;
int N,Q;
#define INF 1000000000
int main(){
  cin>>N;
  vector<int>A(N);
  for(int i=0;i<N;i++)cin>>A[i];
  sort(A.begin(),A.end());
  cin>>Q; int B; while(Q--){
    cin>>B;
    auto i=lower_bound(A.begin(),A.end(),B);
    cout<<min(i!=A.begin()?B-*(i-1):INF,i!=A.end()?*i-B:INF)<<endl;
  }
}