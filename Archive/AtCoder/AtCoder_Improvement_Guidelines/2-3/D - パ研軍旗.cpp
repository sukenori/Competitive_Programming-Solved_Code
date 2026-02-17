#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  string S[5]; for(string &Si:S)cin>>Si;
  int d[3]{};
  for(int i=0;i<N;i++){
    int c[3]{},td[3]{};
    for(string Sj:S)for(int k:{0,1,2})if(Sj[i]!="RBW"[k])c[k]++;
    for(int j:{0,1,2}){
      int m=5e3; for(int k:{0,1,2})if(k!=j)m=min(m,d[k]);
      td[j]=m+c[j];
    }
    memcpy(d,td,sizeof(td));
  }
  cout<<min({d[0],d[1],d[2]})<<endl;
}