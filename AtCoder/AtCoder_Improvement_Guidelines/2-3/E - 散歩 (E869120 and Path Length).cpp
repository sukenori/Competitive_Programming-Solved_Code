#include<bits/stdc++.h>
using namespace std;
int N,Q,M=1e9+7;
int a[120001],c[120002]; int64_t r[120001];
int main(){
  cin>>N>>Q;
  for(int i=1;i<=N;i++)cin>>a[i];
  c[0]=c[Q+1]=1; for(int i=1;i<=Q;i++)cin>>c[i];
  for(int i=1;i<=N;i++){int64_t ri=1,aj=a[i-1];
    for(int j=a[i];j;j>>=1){
      if(j&1)ri=ri*aj%M;
      aj=aj*aj%M;
    }
    r[i]=r[i-1]+ri;
  }
  int s=0; for(int i=0;i<=Q;i++)
    s=(s+abs(r[c[i+1]]-r[c[i]]))%M;
  cout<<s<<endl;
}