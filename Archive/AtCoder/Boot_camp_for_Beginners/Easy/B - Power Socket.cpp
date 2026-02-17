#include<iostream>
int main(){
  int A,B; std::cin>>A>>B;
  int n=0;
  while(B>(A-1)*n+1)n++;
  std::cout<<n<<std::endl;
}