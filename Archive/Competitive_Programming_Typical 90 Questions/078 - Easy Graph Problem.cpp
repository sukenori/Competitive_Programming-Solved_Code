#include<bits/stdc++.h>
using namespace std;
int N,M;
int n[100001];
int main(){
  cin>>N>>M;
  int a,b; for(int i=0;i<M;i++){cin>>a>>b;
    if(a>b)n[a]++; if(a<b)n[b]++;
  }
  int s=0; for(int i=1;i<=N;i++)if(n[i]==1)s++;
  cout<<s<<endl;
}