#include<iostream>
#include<vector>
using namespace std;
int main(){
  int r,c; cin>>r>>c;
  vector<vector<int>> a(r,vector<int>(c));
  for(int i=0; i<r; i++) for(int j=0; j<c; j++) cin>>a[i][j];
  int m=0;
  for(int i=0; i<1<<r; i++){
    vector<vector<int>> b(r,vector<int>(c));
    for(int j=0; j<r; j++){
      if(i>>j&1) for(int k=0; k<c; k++) b[j][k]=1-a[j][k];
      else b[j]=a[j];
    }
    int s=0;
    for(int j=0; j<c; j++){
      int n=0;
      for(int k=0; k<r; k++) n+=b[k][j];
      s+=min(n,r-n);
    }
    m=max(m,r*c-s);
  }
  cout<<m<<endl;
}