# Intro

This is a subproject for exercise in C++.

## Note

There're some notes.

### clang

In my Machine(darwin 20.5), clang++ is a symbol link of clang.
So, you can use clang as clang++. Just add an option that let clang
link the program to libc++.

```zsh
clang -o ${output.file} ${file} -std=c++17 -lstdc++
```

Some commands, maybe useful.

```zsh
clang++ ${file} -stdlib=libc++ -std=c++20
```
### gcc

[The #pragma patch](https://gcc.gnu.org/legacy-ml/gcc-patches/2008-06/msg01435.html).

```c
#pragma GCC optimize("O2")
#include <file>

int main(void) {
        // ...
        // snippet
        // ...
}
```

# TODO

Finish all the tests in ACwing.
