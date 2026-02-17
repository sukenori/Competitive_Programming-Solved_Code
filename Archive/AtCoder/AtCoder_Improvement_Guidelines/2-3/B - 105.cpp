#include<iostream>
int main(){
  int n,a=0; std::cin>>n;
  for(int i=1; i<=n; i+=2){
    int c=0;
    for(int j=1; j<=i; j++){
      if(i%j==0) c++;
    }
    if(c==8) a++;
  }
  std::cout<<a<<"\n";
}