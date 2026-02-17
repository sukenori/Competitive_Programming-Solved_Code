#include<bits/stdc++.h>
using namespace std;
int64_t N;
int main(){
  cin>>N;
  int n=sqrt(N/(2*2*3));
  vector<int64_t>e; vector<bool>p(n+1);
  for(int i=2;i<=n;i++){if(p[i])continue;
    e.push_back(i); for(int j=i;j<=n;j+=i)p[j]=1;
  }
  n=e.size(); int a=0;
  for(int i=0;i<n-2;i++)
    for(int j=i+1;j<n-1;j++)
      for(int k=j+1;k<n;k++){
        int64_t x=e[i]*e[i]*e[j]; if(x>N)break;
        x*=e[k]; if(x>N)break;
        x*=e[k]; if(x>N)break;
        a++;
      }
  cout<<a<<endl;
}