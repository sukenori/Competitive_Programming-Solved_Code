#include <bits/stdc++.h>
using namespace std;

vector<string> d(vector<string> a,int y,int x){
  a.at(y).at(x)='x';
  if (y<9) if (a.at(y+1).at(x)=='o') a=d(a,y+1,x);
  if (x<9) if (a.at(y).at(x+1)=='o') a=d(a,y,x+1);
  if (y>0) if (a.at(y-1).at(x)=='o') a=d(a,y-1,x);
  if (x>0) if (a.at(y).at(x-1)=='o') a=d(a,y,x-1);
  return a;
}

int main(){
  vector<string> a(10);
  for (int i=0; i<10; i++) cin >>a.at(i);
  string f="NO";
  for (int i=0; i<10; i++){
    for (int j=0; j<10; j++){
      if (a.at(i).at(j)=='x'){
        a.at(i).at(j)='o';
        int c=0;
        for (string id: d(a,i,j)) for (char jd: id) if (jd=='o') c++;
        if (c==0){
          f="YES";
          break;
        }
        a.at(i).at(j)='x';
      }
    }
    if (f=="YES") break;
  }
  cout <<f <<endl;
}