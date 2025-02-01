#include<bits/stdc++.h>
using namespace std;
int N;
int main(){
  cin>>N;
  string s; for(int i=0;i<=N;i++){
    int a=10;
    for(int j=1;j<=9;j++)if(N%j==0)if(i%(N/j)==0)a=min(a,j);
    if(a==10)s+='-'; else s+=a+'0';
  }
  cout<<s<<endl;
}