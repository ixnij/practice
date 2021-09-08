fn main() {
    let var_a = 60;
    let var_b = 3420;
    println!("This is the result: {}", gcd(var_a, var_b));
}

fn gcd(a: u32, b: u32) -> u32 {
    if a % b == 0 { b } else { gcd(b, a % b) }
}
