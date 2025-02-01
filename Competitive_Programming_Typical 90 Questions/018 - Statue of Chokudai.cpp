#include<bits/stdc++.h>
using namespace std;
double T,L,X,Y;
int main(){
  cin>>T>>L>>X>>Y;
  int Q; cin>>Q; double E; while(Q--){cin>>E;
    double y=-(L/2)*sin(2*M_PI*(E/T)),z=L/2-(L/2)*cos(2*M_PI*(E/T));
    cout<<fixed<<setprecision(12)<<atan(z/sqrt(X*X+(Y-y)*(Y-y)))*(180/M_PI)<<endl;
  }
}