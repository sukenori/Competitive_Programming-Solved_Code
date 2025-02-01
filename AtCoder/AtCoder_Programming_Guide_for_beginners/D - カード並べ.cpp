#include <bits/stdc++.h>
using namespace std;
int main(){
  int n,k; cin>>n>>k;
  vector<string> card(n);
  for(int i=0; i<n; i++){
    string ci; cin>>ci;
    card.at(i)=ci;
  }
  set<string> combi;
  for(int bit=0; bit<(1<<n); bit++){
    int count=0;
    vector<string> select(0);
    for(int i=0; i<n; i++){
      if(bit&(1<<i)){
        count+=1;
        select.push_back(card.at(i));
      }
    }
    if(count==k){
      sort(select.begin(),select.end());
      do{
        string cs="";
        for(string si:select) cs+=si;
        combi.insert(cs);
      } while(next_permutation(select.begin(),select.end()));
    }
  }
  cout<<combi.size()<<endl;
}