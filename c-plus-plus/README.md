# Intro

This is a subproject for the C++.

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
