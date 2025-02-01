#include <bits/stdc++.h>
using namespace std;
vector<pair<char,int>> int_rec;
vector<pair<char,vector<int>>> vec_rec;
int int_formula(){
  int val;
  char term; cin>>term;
  if(0<=term-'0' && term-'0'<=9) val=term-'0';
  else for(int i=0; i<int_rec.size(); i++){
    if(term==int_rec.at(i).first) val=int_rec.at(i).second;
  }
  int real_term;
  while(1){
    char sign; cin>>sign;
    if(sign==';') break;
    cin>>term;
    if(0<=term-'0' && term-'0'<=9) real_term=term-'0';
    else for(int i=0; i<int_rec.size(); i++){
      if(term==int_rec.at(i).first) real_term=int_rec.at(i).second;
    }
    if(sign=='+') val+=real_term;
    if(sign=='-') val-=real_term;
  }
  return val;
}
vector<int> make_vec(){
  vector<int> rawvec;
  while(1){
    char term,pause; cin>>term>>pause;
    if(0<=term-'0' && term-'0'<=9) rawvec.push_back(term-'0');
    else for(int i=0; i<int_rec.size(); i++){
      if(term==int_rec.at(i).first) rawvec.push_back(int_rec.at(i).second);
    }
    if(pause==']') return rawvec;
  }
}
vector<int> vec_formula(){
  vector<int> val;
  char term; cin>>term;
  if(term=='[') val=make_vec();
  else for(int i=0; i<vec_rec.size(); i++){
    if(term==vec_rec.at(i).first) val=vec_rec.at(i).second;
  }
  vector<int> real_term;
  while(1){
    char sign; cin>>sign;
    if(sign==';') break;
    cin>>term;
    vector<int> real_term;
    if(term=='[') real_term=make_vec();
    else for(int i=0; i<vec_rec.size(); i++){
      if(term==vec_rec.at(i).first) real_term=vec_rec.at(i).second;
    }
    if(sign=='=') val=real_term;
    if(sign=='+'){
      for(int i=0; i<real_term.size(); i++){
        val.at(i)+=real_term.at(i);
      }
    }
    if(sign=='-'){
      for(int i=0; i<real_term.size(); i++){
        val.at(i)-=real_term.at(i);
      }
    }
  }
  return val;
}
int main(){
  int n; cin>>n;
  for(int loop=0; loop<n; loop++){
    string order; cin>>order;
    if(order=="int"){
      char name; cin>>name;
      char sign; cin>>sign;
      int val; val=int_formula();
      bool isin=0;
      for(int i=0; i<int_rec.size(); i++){
        if(name==int_rec.at(i).first){
        int_rec.at(i).second=val;
        isin=1;
        }
      }
      if(isin==0) int_rec.push_back(make_pair(name,val));
    }
    if(order=="print_int"){
      cout<<int_formula()<<endl;
    }
    if(order=="vec"){
      char name; cin>>name;
      char sign; cin>>sign;
      vector<int> val; val=vec_formula();
      bool isin=0;
      for(int i=0; i<vec_rec.size(); i++){
        if(name==vec_rec.at(i).first){
        vec_rec.at(i).second=val;
        isin=1;
        }
      }
      if(isin==0) vec_rec.push_back(make_pair(name,val));
    }
    if(order=="print_vec"){
      vector<int> val; val=vec_formula();
      cout<<"[ ";
      for(int i=0; i<val.size(); i++){
      cout<<val.at(i)<<" ";
      }
      cout<<"]"<<endl;
    }
  }
}