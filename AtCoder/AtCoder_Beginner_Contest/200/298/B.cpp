#include<bits/stdc++.h>
using namespace std;
int main(){
int n; cin>>n;
vector<vector<int>> a(n,vector<int>(n));
for(int i=0; i<n; i++)
for(int j=0; j<n; j++) cin>>a[i][j];

vector<vector<int>> b(n,vector<int>(n));
for(int i=0; i<n; i++)
for(int j=0; j<n; j++) cin>>b[i][j];


for(int k=0; k<4; k++){
vector<vector<int>> na(n,vector<int>(n));
for(int i=0; i<n; i++)
for(int j=0; j<n; j++) na[i][j]=a[n-1-j][i];
int dd=1;
for(int i=0; i<n; i++)
for(int j=0; j<n; j++) if (na[i][j]==1&&b[i][j]==0)dd=0;

if(dd==1){cout<<"Yes"<<endl;exit(0);}
else a=na;
}
cout<<"No"<<endl;

}