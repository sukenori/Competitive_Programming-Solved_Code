#include<bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); i++)
int main(){
  int N; cin>>N;
  vector<double> H(N),S(N),t(N);
  rep(i,N) cin>>H[i]>>S[i];
  int64_t hl=0,hh=1000000000+1000000000*100000LL;
  while(hh-hl>1){
    int64_t mh=(hl+hh)/2;
    bool f=1;
    rep(i,N) t[i]=(mh-H[i])/S[i];
    sort(t.begin(),t.end());
    rep(i,N) if(t[i]<i) f=0;
    f? hh=mh: hl=mh;
  }
  cout<<hh<<endl;
}