#include<bits/stdc++.h>
using namespace std;
int64_t N,M;
int64_t L[200000];
int main(){
  cin>>N>>M;
  int64_t l=0,r=2e14+2e5;
  for(int i=0;i<N;i++){cin>>L[i]; l=max(l,L[i]-1);}
  while(r-l>1){
    int64_t m=(l+r)/2,h=1,w=L[0];
    for(int i=1;i<N;i++){
      if(w+1+L[i]>m){h++; w=L[i];} else w+=1+L[i];
    }
    if(h>M)l=m; else r=m;
  }
  cout<<r<<endl;
}