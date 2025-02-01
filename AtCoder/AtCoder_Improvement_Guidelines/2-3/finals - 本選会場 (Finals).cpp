#include<bits/stdc++.h>
using namespace std;
struct edge{int A,B,C;
  bool operator<(const edge &other){return C<other.C;}
};
int N,M,K;
edge e[100000];
int p[100000],s[100000]{};
int root(int n){while(p[n]!=-1)n=p[n];
  return n;
}
int main(){
  cin>>N>>M>>K;
  int A,B,C; for(int i=0;i<M;i++){
    cin>>A>>B>>C; e[i]={A,B,C};
  }
  fill(p,p+N,-1);
  sort(e,e+M);
  int a=0;
  for(int i=0;i<M;i++){int rA=root(e[i].A),rB=root(e[i].B);
    if(K<N&&rA!=rB){K++; a+=e[i].C;
      if(s[rA]>=s[rB]){p[rB]=rA; s[rA]=max(s[rA],s[rB]+1);}
      else p[rA]=rB;
    }
  }
  cout<<a<<endl;
}