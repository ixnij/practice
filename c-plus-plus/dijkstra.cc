#include <iostream>
#include <cstring>

constexpr int N = 1e2 / 2+ 10;
int m, n;
int g[N][N], dist[N][N];
bool st[N];

using std::cin;
using std::cout;

int dijkstra() {
	memset(dist, 0x3f, sizeof(dist));
	dist[1] = 0;
	
	for (int i = 0; i < n; ++ i) {
		int t = -1;
		for (int j = 1; j <= n; ++ j) {
			if (!st[j] && (t == -1 || dist[t] > dist[j])
					t = j;
		}	

		st[t] = true;

		for (int j = 1; j <= n; ++ j) {
			dist[j] = std::min(dist[j], dist[t] + g[t][j]);
		}
	}

	if (dist[n] == 0x3f3f3f3f) return -1;
	return dist[n];
}


int main() {
	std::ios_base::sync_with_stdio(false);
	std::cin.tie(nullptr), std::cout.tie(nullptr);
	cin >> n >> m;

	std::memset(g, 0x3f, sizeof(g));

	while (m --) {
		int a, b, c;
		cin >> a >> b >> c;
		g[a][b] = std::min(g[a][b], c);	
	}

	std::cout << dijkstra() << "\n";
}

