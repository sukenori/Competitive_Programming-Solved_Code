#include<bits/stdc++.h>
using namespace std;
int N,Q;
string S;
int t[500000],x[500000]; char c[500000];
char a[500000];
int main(){
  cin>>N>>S>>Q;
  int l=0; for(int i=0;i<Q;i++){
    cin>>t[i]>>x[i]>>c[i];
    if(t[i]==2||t[i]==3)l=i;
  }
  for(int i=0;i<N;i++)a[i]=S[i];
  for(int i=0;i<=l;i++){
    if(t[i]==1)a[x[i]-1]=c[i];
  }
  if(t[l]==2)for(int i=0;i<N;i++)a[i]=tolower(a[i]);
  if(t[l]==3)for(int i=0;i<N;i++)a[i]=toupper(a[i]);
  for(int i=l;i<Q;i++){
    if(t[i]==1)a[x[i]-1]=c[i];
  }
  for(int i=0;i<N;i++)cout<<a[i];
  cout<<endl;
}