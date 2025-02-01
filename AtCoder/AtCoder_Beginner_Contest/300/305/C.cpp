#include<bits/stdc++.h>
using namespace std;
int main(){
  int H,W; cin>>H>>W;
  string S[H]; set<string>s;
  for(int i=0;i<H;i++)cin>>S[i];
  for(int i=0;i<H;i++)if(S[i].find('#')!=std::string::npos)
  s.insert(S[i]);  
  int h,w; string q1=*begin(s),q2=*rbegin(s);
for(int i=0;i<W;i++)if(q1[i]!=q2[i])w=i;
  if(q1[w]=='.')
  for(int i=0;i<H;i++)if(S[i]==q1)h=i;
  if(q2[w]=='.')
  for(int i=0;i<H;i++)if(S[i]==q2)h=i;
  cout<<h+1<<' '<<w+1<<endl;

}