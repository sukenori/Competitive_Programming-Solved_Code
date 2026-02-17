#include <bits/stdc++.h>
using namespace std;

int main() {
  int N, s=0, ave;
  cin >> N;
  vector<int>a(N);
  for (int i=0; i<N; i++) {
    cin >> a.at(i);
    s+=a.at(i);
  }
  ave=s/N;
  for (int i=0; i<N; i++) {
    if (a.at(i)>ave) cout << a.at(i)-ave;
    else cout << ave-a.at(i);
    cout << endl;
  }
}