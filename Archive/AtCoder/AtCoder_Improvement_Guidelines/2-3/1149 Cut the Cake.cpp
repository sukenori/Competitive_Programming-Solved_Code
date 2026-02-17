#include<bits/stdc++.h>
using namespace std;
int main(){
  while(1){
    int n,w,d; cin>>n>>w>>d; if(n+w+d==0)break;
    vector<tuple<int,int,int> >c; c.push_back({w*d,w,d});
    for(int i=0;i<n;i++){
      int p,s; cin>>p>>s; p--;
      int wp,dp; tie(ignore,wp,dp)=c[p];
      c.erase(c.begin()+p);
      s%=wp+dp;
      if(s<wp){
        c.push_back({min(s*dp,(wp-s)*dp),min(s,wp-s),dp});
        c.push_back({max(s*dp,(wp-s)*dp),max(s,wp-s),dp});
      }
      if(s>wp){s-=wp;
        c.push_back({min(wp*s,wp*(dp-s)),wp,min(s,dp-s)});
        c.push_back({max(wp*s,wp*(dp-s)),wp,max(s,dp-s)});
      }
    }
    sort(c.begin(),c.end());
    for(int i=0;i<=n;i++)
      cout<<get<0>(c[i])<<(i<n?" ":"\n");
  }
}