#include<bits/stdc++.h>
using namespace std;
int N;
int A[200001],d[200001];
vector<int>B;
int main(){
  cin>>N;
  for(int i=1;i<=N;i++)cin>>A[i];
  int i=1; while(!d[i]){
    B.push_back(i); d[i]=1; i=A[i];
  }
  B.erase(B.begin(),find(B.begin(),B.end(),i));
  cout<<B.size()<<endl;
  for(int Bi:B)cout<<Bi<<' ';
}