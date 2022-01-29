function f (n) {
    if (n === 0) {
	return 1;
    } else {
	return n * f (n - 1);
    }
}

const p = 5
console.log (f (p))
