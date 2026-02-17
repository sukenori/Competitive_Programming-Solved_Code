#include<bits/stdc++.h>
using namespace std;
int N,M=1000000007;
int main(){
  cin>>N;
  int64_t a=1; int x=-1,y=-1,z=-1;
  for(int i=0;i<N;i++){
  int A; cin>>A;
    a=a*((A-1==x)+(A-1==y)+(A-1==z))%M;
    if(A-1==x)x++;
    else if(A-1==y)y++;
    else if(A-1==z)z++;
  }
  cout<<a<<endl;
}