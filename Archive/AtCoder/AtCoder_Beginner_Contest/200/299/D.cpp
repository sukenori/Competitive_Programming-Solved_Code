#include<bits/stdc++.h>
using namespace std;
int main(){

int n;cin>>n;
int l=1,r=n;
while(r-l>1){
int m=(l+r)/2;
cout<<"? "<<m<<endl;
int S;cin>>S;
S?r=m:l=m;
}
cout<<"! "<<l<<endl;
}