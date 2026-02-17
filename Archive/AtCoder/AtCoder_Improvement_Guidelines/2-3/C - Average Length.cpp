#include<bits/stdc++.h>
using namespace std;
int main(){
  int N; cin>>N;
  vector<int> x(N),y(N),p(N);
  for(int i=0; i<N; i++){
    cin>>x[i]>>y[i]; p[i]=i;
  }
  double s=0,c=0;
  do{
    auto i=p.begin();
    while(i+1!=p.end()){
      s+=sqrt(pow((x[*(i+1)]-x[*i]),2)+pow((y[*(i+1)]-y[*i]),2));
      i++;
    }
    c++;
  } while(next_permutation(p.begin(),p.end()));
  cout<<fixed<<setprecision(10)<<s/c<<endl;
}