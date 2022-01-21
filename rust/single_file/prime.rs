fn main () {
    let num = 23;
    if is_prime(num) {
        println!("{} is a prime.", num);
    } else {
        println!("{} is not a prime.", num);
    }
}

fn is_prime (n: u32) -> bool {
    if n < 2 {
        return false;
    } else {
        for i in 2..n {
            if n % i == 0 {
                return false;
            }
        }
    }
    true
}
