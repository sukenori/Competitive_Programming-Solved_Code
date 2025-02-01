#include<bits/stdc++.h>
using namespace std;
int main(){
string s,t;
cin>>s>>t;
vector<int> sa(25,0),ta(25,0);
int sq=0,tq=0;
for(char si:s){
if(si-'a'>=0)sa[si-'a']++;
else sq++;
}
for(char ti:t){
if(ti-'a'>=0)ta[ti-'a']++;
else tq++;
}

for(int i=0;i<26;i++){
if(sa[i]==ta[i]){continue;}
else if(i==('a'-'a')||i==('t'-'a')||i==('c'-'a')||i==('o'-'a')||
i==('d'-'a')||i==('e'-'a')||i==('r'-'a')){
if(sa[i]>ta[i])tq-=sa[i]-ta[i];
if(sa[i]<ta[i])sq-=ta[i]-sa[i];
}

  
}
if(sq>=0&&tq>=0&&sq==tq)cout<<"Yes"<<endl;
else cout<<"No"<<endl;
}
