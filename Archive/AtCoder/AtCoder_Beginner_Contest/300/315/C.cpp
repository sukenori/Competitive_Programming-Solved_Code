#include<bits/stdc++.h>
using namespace std;
int N;
int64_t F[300000],S[300000],mF,mS=0,mi;
int main(){
  cin>>N;
  for(int i=0;i<N;i++){
    cin>>F[i]>>S[i];
    if(S[i]>mS){mS=S[i]; mF=F[i]; mi=i;}
  }
  set<int64_t,greater<int64_t>>s;
  for(int i=0;i<N;i++){
    if(i==mi)continue;
    if(F[i]!=mF)s.insert(mS+S[i]);
    else s.insert(mS+S[i]/2);
  }
  cout<<(*s.begin())<<endl;
}