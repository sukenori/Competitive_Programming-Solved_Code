#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; string S;
  map<char,int>s;
  cin>>N>>S;
  for(int i=0;i<=N;i++){
    s[S[i]]++;
    if(s['A']>=1&&s['B']>=1&&s['C']>=1){cout<<i+1<<endl; exit(0);}
  }
}