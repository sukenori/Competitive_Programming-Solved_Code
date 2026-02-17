#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  int k=ceil(sqrt(N*2));
  if(N*2==k*(k-1)){
    cout<<"Yes"<<endl<<k<<endl;
    set<int>s[k];
    int i=1;
    for(int j=0;j<k-1;j++)for(int l=j+1;l<k;l++){
      s[j].insert(i); s[l].insert(i); i++;
    }
    for(int i=0;i<k;i++){
      cout<<k-1;
      for(int is:s[i])cout<<' '<<is;
      cout<<endl;
    }
  }
  else cout<<"No"<<endl;
}