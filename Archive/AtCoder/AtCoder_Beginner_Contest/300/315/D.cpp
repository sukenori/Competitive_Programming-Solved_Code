#include<bits/stdc++.h>
using namespace std;
int H,W;
int cH[2000][26],cW[2000][26];
int main(){
  cin>>H>>W;
  string s; for(int i=0;i<H;i++){
    cin>>s; for(int j=0;j<W;j++){
      cH[i][s[j]-'a']++; cW[j][s[j]-'a']++;
    }
  }
  bool f=1; int mH=H,mW=W;
  while(f){f=0; vector<pair<int,int>>dH,dW; int i,j;
    for(i=0;i<H;i++)for(j=0;j<26;j++)
      if(mW>1&&cH[i][j]==mW){dH.push_back({i,j}); f=1;}
    for(i=0;i<W;i++)for(j=0;j<26;j++)
      if(mH>1&&cW[i][j]==mH){dW.push_back({i,j}); f=1;}
    for(auto di:dH){tie(i,j)=di;
      cH[i][j]=0; mH--;
      for(int k=0;k<W;k++)if(cW[k][j]>0)cW[k][j]--;
    }
    for(auto di:dW){tie(i,j)=di;
      cW[i][j]=0; mW--;
      for(int k=0;k<H;k++)if(cH[k][j]>0)cH[k][j]--;
    }
  }
  cout<<mH*mW<<endl;
}