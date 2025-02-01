#include<bits/stdc++.h>
using namespace std;

int main(){
int h,w; cin>>h>>w;
string a[h*2],b[h];
for(int i=0;i<h;i++)cin>>a[i];
for(int i=0;i<h;i++)cin>>b[i];

for(int i=0;i<h;i++)a[i]+=a[i];

for(int i=0;i<h;i++)a[i+h]=a[i];

for(int di=0;di<h;di++)for(int dj=0;dj<w;dj++){
int f=0;
for(int i=0;i<h;i++)for(int j=0;j<w;j++)
if(a[i+di][j+dj]!=b[i][j])f=1;
if(f==0){cout<<"Yes"<<endl;exit(0);}


}cout<<"No"<<endl;
}