#include<bits/stdc++.h>
using namespace std;
int N;
pair<string,int>S[500000];
int l[500000];
pair<int,int>a[500000];
int main(){
  cin>>N;
  string Si; for(int i=0;i<N;i++){
    cin>>Si; S[i]={Si,i};
  }
  sort(S,S+N);
  for(int i=0;i<N-1;i++){
    int n=min(S[i].first.size(),S[i+1].first.size());
    for(int j=0;j<n;j++){
      if(S[i].first[j]!=S[i+1].first[j]){l[i]=j; break;}
      if(j==n-1)l[i]=j+1;
    }
  }
  for(int i=0;i<N;i++)a[i]={S[i].second,max((i>=0)*l[i-1],(i<N-1)*l[i])};
  sort(a,a+N);
  for(int i=0;i<N;i++)cout<<a[i].second<<endl;
}