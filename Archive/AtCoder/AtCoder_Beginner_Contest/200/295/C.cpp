#include<bits/stdc++.h>
using namespace std;
int N;
map<int,int>A;
int main(){
  cin>>N;
  int Ai; for(int i=0;i<N;i++){cin>>Ai; A[Ai]++;}
  int a=0; for(auto Ai:A)a+=Ai.second/2;
  cout<<a<<endl;
}