#include<iostream>
#include<string>
using namespace std;
int main(){
int h,w;
cin>>h>>w;
string s;
for(int i=0; i<h; i++){
  cin>>s;
  while(1){
int po=s.find("TT");
if(po<0)break;
else s.replace(po,2,"PC");

}
cout<<s<<endl;
}
}