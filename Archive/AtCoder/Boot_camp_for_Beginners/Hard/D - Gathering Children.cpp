#include<bits/stdc++.h>
using namespace std;
vector<int> a(100000);
int main(){
  string S; cin>>S;
  int n=S.size();
  S+='R';
  int t=0,r=0,l=0;
  for(int i=0;i<=n;i++){
    if(S[i]=='R'){
      if(l>0){a[t-1]=(r-1)/2+1+l/2; a[t]=r/2+(l-1)/2+1; r=1; l=0;}
      else r++;
    }
    else{if(l==0)t=i; l++;}
  }
  for(int i=0;i<n;i++)cout<<a[i]<<" \n"[i==n-1];
}