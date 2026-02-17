#include<bits/stdc++.h>
using namespace std;
int R,C;
string B[20];
void b(int r,int c,int p){
  for(int i=0;i<R;i++)for(int j=0;j<C;j++)
    if(abs(r-i)+abs(c-j)<=p&&B[i][j]=='#')B[i][j]='.';
}
int main(){
  cin>>R>>C;
  for(int i=0;i<R;i++)cin>>B[i];
  for(int i=0;i<R;i++)for(int j=0;j<C;j++){
    int n=B[i][j]-'0';
    if(1<=n&&n<=9){b(i,j,n); B[i][j]='.';}  
  }
  for(int i=0;i<R;i++)cout<<B[i]<<endl;  
}