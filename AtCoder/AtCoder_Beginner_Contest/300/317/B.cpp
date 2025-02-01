#include<bits/stdc++.h>
using namespace std;
int N;
set<int>A;
int main(){
  cin>>N;
  int Ai; for(int i=0;i<N;i++){cin>>Ai; A.insert(Ai);}
  int i=*A.begin(); while(A.count(i))i++;
  cout<<i<<endl;
}