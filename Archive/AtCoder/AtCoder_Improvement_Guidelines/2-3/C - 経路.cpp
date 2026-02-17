#include<bits/stdc++.h>
using namespace std;
int M=1e9+7;
int main(){
  int W,H; cin>>W>>H;
  int64_t a=1,wh=1;
  for(int i=W+H-2;i>0;i--)a=a*i%M;
  for(int i=W-1;i>0;i--)wh=wh*i%M;
  for(int i=H-1;i>0;i--)wh=wh*i%M;
  for(int i=M-2;i>0;i>>=1){
    if(i&1)a=a*wh%M;
    wh=wh*wh%M;
  }
  cout<<a<<endl;
}