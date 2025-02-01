#include<iostream>
#include<vector>
#include<algorithm>
using namespace std;
int main(){
  int n,i; cin>>n;
  vector<int64_t> a(n),b(n);
  for(i=0; i<n; i++) cin>>a[i]>>b[i];
  sort(a.begin(),a.end());
  sort(b.begin(),b.end());
  int64_t s=0;
  for(i=0; i<n; i++) s+=abs(a[i]-a[n/2])+b[i]-a[i]+abs(b[i]-b[n/2]);
  cout<<s<<endl;
}