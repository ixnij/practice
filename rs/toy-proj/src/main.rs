fn main() {
    let absname: &str = "Hello, World!";
    println!("{}", absname);
    {
	let p = "Just local.";
	println!("{}", p);
    }
    let p = "Pure";
    println!("{}", p);
    let mut my_str = String::from("Real, World.");
    if 1 != 2 {
	add_something_to_my_string(" Just, Good.", &mut my_str);
    }
    println!("{}", my_str);
    let mut n: &str = "Hard";
    println!("{}", n);
    n = "Worl";
    println!("{}", n);
}

fn add_something_to_my_string(sth: &str, will_be_changes: &mut String) -> () {
    will_be_changes.push_str(sth);
}
