#include <iostream>

void ya() {
	for(int i = 1;; i ++) {
		bool flag = true;	
	}
}

int main(void) {
	for (int i = 1;; ++ i) {
		bool flag = true;
		for(int j = 2; j * j <= i; ++ j) 
			if (i % j == 0) {
				flag = false;
				break;
			}
		if(flag)
			std::cout << i << std::endl;
	}
}
