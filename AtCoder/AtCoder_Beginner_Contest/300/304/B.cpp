#include<bits/stdc++.h>
using namespace std;
int main(){
int64_t n; cin>>n;
if(n<=1000-1)cout<<n<<endl;
if(1000<=n&&n<=10000-1)cout<<n-n%10<<endl;
if(10000<=n&&n<=100000-1)cout<<n-n%100<<endl;
if(100000<=n&&n<=1000000-1)cout<<n-n%1000<<endl;
if(1000000<=n&&n<=10000000-1)cout<<n-n%10000<<endl;
if(10000000<=n&&n<=100000000-1)cout<<n-n%100000<<endl;
if(100000000<=n&&n<=1000000000LL-1)cout<<(int64_t)(n-n%1000000)<<endl;





}