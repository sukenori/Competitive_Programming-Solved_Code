#include<bits/stdc++.h>
using namespace std;
int main(){
  int N,P,Q; cin>>N>>P>>Q;
  int D[100]; for(int i=0;i<N;i++)cin>>D[i];
  cout<<min(P,Q+*min_element(D,D+N))<<endl;
}