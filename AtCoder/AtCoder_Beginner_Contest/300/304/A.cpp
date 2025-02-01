#include<bits/stdc++.h>
using namespace std;
int main(){
int n; cin>>n;
vector<string> s(n);
int a[n];
for(int i=0;i<n;i++)cin>>s[i]>>a[i];
for(int i=0;i<n;i++)s.push_back(s[i]);
int k=0;for(int i=0;i<n;i++)if(a[i]<a[k])k=i;
for(int i=k;i<n+k;i++)cout<<s[i]<<endl;




}