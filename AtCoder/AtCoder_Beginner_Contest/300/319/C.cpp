#include<bits/stdc++.h>
using namespace std;
int c[9];
int main(){
  for(int i=0;i<9;i++)cin>>c[i];
  vector<int>l[8]={{0,1,2},{3,4,5},{6,7,8},{0,3,6},{1,4,7},{2,5,8},{0,4,8},{2,4,6}};
  vector<int>p(9); for(int i=0;i<9;i++)p[i]=i;
  double a=0,s=0; do{
    bool f=0; int d[8]{};
    for(int pi:p)for(int i=0;i<8;i++)for(int lj:l[i])if(pi==lj){
      if(!d[i])d[i]=c[pi];
      else{if(c[pi]==d[i])f=1; d[i]=10;}
    }
    a++; if(f)s++;
  }while(ranges::next_permutation(p).found);
  cout<<fixed<<setprecision(30)<<(a-s)/a<<endl;
}