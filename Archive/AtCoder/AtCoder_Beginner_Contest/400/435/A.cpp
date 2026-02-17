#include <bits/stdc++.h>
using namespace std;
#include <boost/range/numeric.hpp>
using namespace boost;
int main(){
  int N; cin>>N;
  cout<<accumulate(views::iota(1,N+1)|ranges::to<vector>(),0)<<endl;
  return 0;
}