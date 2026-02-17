#include<bits/stdc++.h>
using namespace std;
int H[3],W[3];
string S[3][10];
int main(){
  for(int i=0;i<3;i++){
    cin>>H[i]>>W[i];
    for(int j=0;j<H[i];j++)cin>>S[i][j];
  }
  int mH=max(H[0],H[1]),mW=max(W[0],W[1]);
  for(int dH0=mH-H[0];dH0<mH+H[2]-1;dH0++)
  for(int dW0=mW-W[0];dW0<mW+W[2]-1;dW0++)
  for(int dH1=mH-H[1];dH1<mH+H[2]-1;dH1++)
  for(int dW1=mW-W[1];dW1<mW+W[2]-1;dW1++){
    bool f=1;
    for(int h=0;h<(mH-1)*2+H[2];h++)
    for(int w=0;w<(mW-1)*2+W[2];w++){
      char S0=dH0<=h&&h<dH0+H[0]&&dW0<=w&&w<dW0+W[0]?S[0][h-dH0][w-dW0]:'.';
      char S1=dH1<=h&&h<dH1+H[1]&&dW1<=w&&w<dW1+W[1]?S[1][h-dH1][w-dW1]:'.';
      char S2=mH-1<=h&&h<mH-1+H[2]&&mW-1<=w&&w<mW-1+W[2]?S[2][h-(mH-1)][w-(mW-1)]:'.';
      if(!(((S0=='#'||S1=='#')&&S2=='#')||(S0=='.'&&S1=='.'&&S2=='.')))f=0;
    }
    if(f){cout<<"Yes"<<endl; exit(0);}
  }
  cout<<"No"<<endl;
}