#include<bits/stdc++.h>
using namespace std;
int H,W;
int main(){
  cin>>H>>W;
  cout<<(H==1||W==1?H*W:((H+2-1)/2)*((W+2-1)/2))<<endl;
}