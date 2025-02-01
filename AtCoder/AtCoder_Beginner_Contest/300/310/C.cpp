#include<bits/stdc++.h>
using namespace std;
int N;
set<string>S;
int main(){
  cin>>N;
  string Si; int a=0; for(int i=0;i<N;i++){
    cin>>Si; if(!S.count(Si))a++;
    string rSi=Si; reverse(rSi.begin(),rSi.end());
    S.insert(Si); S.insert(rSi);
  }
  cout<<a<<endl;
}