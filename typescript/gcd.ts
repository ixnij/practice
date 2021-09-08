function gcd(a: number, b: number) {
    if (a % b == 0) {
        return b;
    } else {
        return gcd(b, a % b);
    }
}


// I don't know the following codes can run
var ta: number = 210;
var tb: number = 120;

console.log(gcd(ta, tb))
