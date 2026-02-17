#include<bits/stdc++.h>
using namespace std;
int main(){
  int n; cin>>n;
  int r[n],c[n]; for(int i=0;i<n;i++)cin>>r[i]>>c[i];
  int M[n][n]{};
  for(int d=1;d<n;d++)for(int i=0;i<n-d;i++){
    int m=1e8;
    for(int j=0;j<d;j++)m=min(m,M[i][i+j]+M[i+j+1][i+d]+r[i]*c[i+j]*c[i+d]);
    M[i][i+d]=m;
  }
  cout<<M[0][n-1]<<endl;
}