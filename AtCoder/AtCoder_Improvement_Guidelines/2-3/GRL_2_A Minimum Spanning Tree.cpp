#include<bits/stdc++.h>
using namespace std;
struct edge{int s,t,w;
  bool operator<(const edge &other){return w<other.w;}
};
int V,E;
edge e[100000];
int p[10000],r[10000]{};
int root(int n){
  while(p[n]!=-1)n=p[n];
  return n;
}
int main(){
  cin>>V>>E;
  for(int i=0;i<E;i++){int s,t,w; cin>>s>>t>>w; e[i]={s,t,w};}
  sort(e,e+E);
  fill(p,p+V,-1);
  int a=0;
  for(int i=0;i<E;i++){int rs=root(e[i].s),rt=root(e[i].t);
    if(rs!=rt){
      a+=e[i].w;
      if(r[rs]>=r[rt]){p[rt]=rs; r[rs]=max(r[rs],r[rt]+1);}
      else p[rs]=rt;
    }
  }
  cout<<a<<endl;
}