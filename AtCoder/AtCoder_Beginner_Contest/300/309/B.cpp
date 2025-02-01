#include<bits/stdc++.h>
using namespace std;
int N;
int A[100][100],a[100][100];
int main(){
  cin>>N;
  char Ai;
  for(int i=0;i<N;i++)for(int j=0;j<N;j++){
    cin>>Ai; A[i][j]=Ai-'0';
  }
  for(int i=0;i<N;i++)for(int j=0;j<N;j++){
    if(i==0){
      if(j==0)a[0][0]=A[1][0];
      else a[i][j]=A[i][j-1];
    }
    else if(j==0){
      if(i==N-1)a[N-1][0]=A[N-1][1];
      else a[i][j]=A[i+1][j];
    }
    else if(i==N-1){
      if(j==N-1)a[N-1][N-1]=A[N-2][N-1];
      else a[i][j]=A[i][j+1];
    }
    else if(j==N-1){
      if(i==N-1)a[N-1][N-1]=A[N-1][N-2];
      else a[i][j]=A[i-1][j];
    }
  else a[i][j]=A[i][j];
  }
  for(int i=0;i<N;i++)for(int j=0;j<N;j++){
    cout<<a[i][j]; if(j==N-1)cout<<endl;
  }
}