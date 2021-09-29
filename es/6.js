// Label

haskell:
for (var i = 1; i <= 10; i ++) {
  for (var j = i; j <= 10; j ++) {
    console.log (i, j);
    if (i == j) {
      continue haskell;
    }
  }
}
