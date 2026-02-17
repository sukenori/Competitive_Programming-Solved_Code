#include<bits/stdc++.h>
using namespace std;
int64_t L,N1,N2;
int64_t v[200001],l[200001];
int main(){
  cin>>L>>N1>>N2;
  int64_t vi,li,sl; for(int i=0;i<N1+N2;i++){
    cin>>vi>>li; if(i==0||i==N1)sl=0; sl+=li;
    v[i]=vi; l[i]=sl;
  }
  int64_t i=0,i1=0,i2=N1; int64_t a=0;
  while(1){
    int64_t ni=min(l[i1],l[i2]);
    if(v[i1]==v[i2])a+=ni-i;
    i1+=ni==l[i1]; i2+=ni==l[i2];
    if(ni==L)break; else i=ni;
  }
  cout<<a<<endl;
}