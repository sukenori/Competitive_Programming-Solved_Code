#include <bits/stdc++.h>
using namespace std;

int main(){
  int h,w;
  cin >>h >>w;
  vector<string> a(h);
  for (int i=0; i<h; i++) cin >>a.at(i);
  for (int i=0; i<w; i++){
    int f=0;
    for (int j=0; j<h; j++) f+=(a.at(j).at(i)=='#');
    if (f==0) {
      for (int j=0; j<h; j++){
        string s="";
        for (int k=0; k<w; k++) if (k!=i) s+=a.at(j).at(k);
        a.at(j)=s;
      }
      i--;
      w--;
    }
  }
  for (int i=0; i<h; i++){
    int f=0;
    for (int j=0; j<w; j++) f+=(a.at(i).at(j)=='#');
    if (f>0) cout <<a.at(i) <<endl;
  }
}