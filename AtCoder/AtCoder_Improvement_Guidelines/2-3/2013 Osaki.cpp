#include<bits/stdc++.h>
using namespace std;
int main(){
  while(1){
    int n; cin>>n; if(!n)break;
    int t[24*60*60]{}; while(n--){
      int h,m,s;
      scanf("%d:%d:%d",&h,&m,&s);
      t[(h*60+m)*60+s]++;
      scanf("%d:%d:%d",&h,&m,&s);
      t[(h*60+m)*60+s]--;
    }
    int a=t[0]; for(int i=1;i<24*60*60;i++){
      t[i]+=t[i-1]; a=max(a,t[i]);
    }
    cout<<a<<endl;
  }
}