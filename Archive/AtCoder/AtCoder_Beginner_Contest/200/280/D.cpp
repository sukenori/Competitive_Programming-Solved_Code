#include<bits/stdc++.h>
using namespace std;
int main(){
  int64_t K; cin>>K;
  int64_t Ki=K,a=1;
  for(int64_t i=2;(i*i)<=K;i++){
    int j=0; while(Ki%i==0){Ki/=i; j++;}
    int64_t ai=0; while(j>0){
      ai+=i; int aj=ai;
      while(aj%i==0){aj/=i; j--;}
    }
    a=max(a,ai);
    if(Ki==1)break;
  }
  a=max(a,Ki);
  cout<<a<<endl;
}