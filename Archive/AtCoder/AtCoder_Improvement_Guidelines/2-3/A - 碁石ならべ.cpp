#include<bits/stdc++.h>
using namespace std;
int n;
int main(){
  cin>>n;
  vector<pair<int,int>>c{};
  int ci; for(int i=1;i<=n;i++){
    cin>>ci; auto it=c.end()-1;
    if(i%2){
      if(i==1||ci!=(*it).first)c.push_back({ci,1});
      else(*it).second++;
    }
    else{
      if(ci==(*it).first)(*it).second++;
      else{
        if(c.size()==1){c[0].first=ci; c[0].second++;}
        else{(*(it-1)).second+=(*it).second+1; c.pop_back();}
      }
    }
  }
  int s=0; for(auto ci:c)if(!ci.first)s+=ci.second;
  cout<<s<<endl;
}