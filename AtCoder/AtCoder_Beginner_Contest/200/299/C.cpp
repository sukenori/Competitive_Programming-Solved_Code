#include<bits/stdc++.h>
using namespace std;
int main(){
int n; cin>>n;
string s; cin>>s;

int m=0,c=0,f1=0,f2=0;
for(char si:s){
  
  if(si=='-'){f2=1;m=max(m,c);c=0;}

  if(si=='o'){c++;f1=1;}
}
m=max(m,c);
if(f1==1&&f2==1)cout<<m<<endl;
else cout<<-1<<endl;

}