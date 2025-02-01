#include<bits/stdc++.h>
using namespace std;
int N;
int main(){
  cin>>N;
  for(int i=0;i<1<<N;i++){
    int s=0; for(int j=N-1;j>=0;j--){s+=i>>j&1?-1:1;
      if(s<0)break;
      else if(j==0&&s==0){
        for(int k=N-1;k>=0;k--)cout<<(i>>k&1?')':'('); cout<<endl;
      }
    }
  }
}