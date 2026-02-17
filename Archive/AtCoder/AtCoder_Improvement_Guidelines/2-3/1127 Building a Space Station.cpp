#include<bits/stdc++.h>
using namespace std;
int n;
struct cell{double x,y,z,r;
  double co(cell B){
    double dx=x-B.x,dy=y-B.y,dz=z-B.z;
    return max(sqrt(dx*dx+dy*dy+dz*dz)-(r+B.r),0.0);
  }
};
struct edge{int a,b; double co;
  bool operator<(const edge &x){return co<x.co;}
};
cell ce[100];
edge ed[50*99];
int p[100],s[100]{};
int root(int n){while(p[n]!=-1)n=p[n];
  return n;
}
int main(){
  while(1){
    cin>>n; if(n==0)break;
    double x,y,z,r; for(int i=0;i<n;i++){
      cin>>x>>y>>z>>r; ce[i]={x,y,z,r};
    }
    int m=0; for(int i=0;i<n;i++)for(int j=0;j<i;j++){
      ed[m]={i,j,ce[i].co(ce[j])}; m++;
    }
    sort(ed,ed+m);
    fill(p,p+n,-1);
    double a=0.0;
    for(int i=0;i<m;i++){int ra=root(ed[i].a),rb=root(ed[i].b);
      if(ra!=rb){a+=ed[i].co;
        if(s[ra]>=s[rb]){p[rb]=ra; s[ra]=max(s[ra],s[rb]+1);}
        else p[ra]=rb;
      }
    }
    cout<<fixed<<setprecision(3)<<a<<endl;
  }
}