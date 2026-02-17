#include<iostream>
using namespace std;
int main(){
  int n,a=0; string s; cin>>n>>s;
  for(int p=0; p<1000; p++){
    for(int i=-1,q=100; q>=1; q/=10){
      i=s.find('0'+p/q%10,i+1);
      if(i<0)break;
      if(q==1)a++;
    }
  }
  cout<<a<<endl;
}