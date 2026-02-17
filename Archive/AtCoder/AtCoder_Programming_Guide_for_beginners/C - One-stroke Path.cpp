#include <bits/stdc++.h>
using namespace std;
int main(){
  int n,m;
  cin >>n >>m;
  set<pair<int,int>> ab;
  for(int i=0; i<m; i++){
    int a,b;
    cin >>a >>b;
    ab.insert(make_pair(a,b));
    ab.insert(make_pair(b,a));
  }
  vector<int> p(n-1);
  for(int i=0; i<n-1; i++) p.at(i)=i+2;
  int a=0;
  do{
    int c=0;
    for(int i=0; i<n-1; i++){
      if(i==0){
        if(ab.count(make_pair(1,p.at(0)))) c+=1;
      }
      else if(ab.count(make_pair(p.at(i-1),p.at(i)))) c+=1;
    }
    if(c==n-1) a+=1;
  } while(next_permutation(p.begin(),p.end()));
  cout <<a <<endl;
}