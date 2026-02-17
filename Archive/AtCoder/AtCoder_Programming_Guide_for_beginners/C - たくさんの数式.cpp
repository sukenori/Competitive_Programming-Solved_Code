#include<bits/stdc++.h>
using namespace std;
string s;
int64_t dfs(int i,int64_t p,int64_t su){
  if (i==s.size()) return su*(p==0);
  return
    dfs(i+1,p*10+(s[i]-'0'),su)
    +dfs(i+1,0,su+p*10+(s[i]-'0'));
}
int main(){
    cin>>s;
    cout<<dfs(0,0,0)<<endl;
}