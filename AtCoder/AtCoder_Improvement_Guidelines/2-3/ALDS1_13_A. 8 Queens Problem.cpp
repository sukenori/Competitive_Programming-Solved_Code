#include<bits/stdc++.h>
using namespace std;
int main(){
  int k; cin>>k;
  set<pair<int,int> > s; int pr,pc;
  for(int i=0; i<k; i++){cin>>pr>>pc; s.insert(make_pair(pr,pc));}
  vector<int> c(8);
  for(int i=0; i<8; i++) c[i]=i;
  do{
    int m=0;
    set<int> ip,im;
    for(int i=0; i<8; i++){
      if(s.count(make_pair(i,c[i]))) m++;
      ip.insert(i+c[i]); im.insert(i-c[i]);
    }
    if(m==k&&ip.size()==8&&im.size()==8){
      for(int i=0; i<8; i++){
        for(int j=0; j<8; j++) j==c[i]? cout<<'Q':  cout<<'.';
        cout<<endl;
      }
      exit(0);
    }
  } while(next_permutation(c.begin(),c.end()));
}