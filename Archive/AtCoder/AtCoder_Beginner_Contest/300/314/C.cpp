#include<bits/stdc++.h>
using namespace std;
int N,M;
string S;
int C[200000];
deque<char>m[200001];
int main(){
  cin>>N>>M>>S;
  for(int i=0;i<N;i++){
    cin>>C[i];
    m[C[i]].push_back(S[i]);
  }
  for(int i=1;i<=M;i++){
    m[i].push_front(m[i].back());
    m[i].pop_back();
  }
  for(int i=0;i<N;i++){
    cout<<m[C[i]].front();
    m[C[i]].pop_front();
  }
  cout<<endl;
}