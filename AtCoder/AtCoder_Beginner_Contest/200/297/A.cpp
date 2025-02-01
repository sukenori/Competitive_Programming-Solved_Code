#include<iostream>
using namespace std;
int main(){
int n,d,t;cin>>n>>d;
int pt;cin>>pt;
for (int i=1; i<n; i++){
  cin>>t;
if (t-pt<=d) {cout<<t<<endl; exit(0);}
else{pt=t;}
}
cout<<-1<<endl;
}