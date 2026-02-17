#include <bits/stdc++.h>
using namespace std;
signed main(){
	int N,M; cin>>N>>M;
	vector<vector<int>> b(M,vector<int>());
	for (int i=0; i<N; i++){
		int A,B; cin>>A>>B;
		b[A-1].push_back(B);
	}
	for (int i=0; i<M; i++){
		cout<<accumulate(b[i].begin(),b[i].end(),0.0)/b[i].size()<<endl;
	}
	return 0;
}