#include<bits/stdc++.h>
using namespace std;
int main(){
  int N,A,B; cin>>N>>A>>B;
  string S; cin>>S;
  int p=0,o=0;
  for(char Si:S){bool f=0;
    if(Si=='a')if(p<A+B)f=1;
    if(Si=='b'){o++;if(p<A+B&&o<=B)f=1;}
    if(f){cout<<"Yes"<<endl; p++;} else cout<<"No"<<endl;
  }
}