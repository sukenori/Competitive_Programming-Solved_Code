#include<bits/stdc++.h>
using namespace std;
#include "ExtSTL/count_map.hpp"
#include "ExtSTL/map_values.hpp"

bool solve(array<int,4> c){
  //
  auto values=map_values(count_map(c));
  ranges::sort(values|views::all);
  return values==vector<int>{1,3}||values==vector<int>{2,2};
}
  
int main(){
  //input
  array<int,4>c;
  for(auto& ci:c) cin>>ci;
  
  //solve
  auto ans=solve(c);
  
  //output
  cout<<(ans? "Yes": "No")<<endl;
}