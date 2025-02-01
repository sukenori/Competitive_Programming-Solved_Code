#include<iostream>
#include <algorithm> 
#include <iostream>
using namespace std;
int main(){
int64_t a,b,c=0;
cin>>a>>b;
if(a<b) swap(a,b);
while(1){

c+=a/b;
a=a%b;
if (a==0)break;
c+=b/a;
b=b%a;
if(b==0)break;


}
cout<<c-1<<endl;
}