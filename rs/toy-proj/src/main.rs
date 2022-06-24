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
    let n1: &str = &my_str[..3];
    let ns: &str = &my_str[5..];
    println!("There are two silces: {} and {}", n1, ns);
    let _len = my_str.len();
    assert_eq!(24, _len);
    let (_, y) = returns_itself_and_its_length(String::from("r"));
    println!("{}", y);
}

fn add_something_to_my_string(sth: &str, will_be_changes: &mut String) -> () {
    will_be_changes.push_str(sth);
}

fn returns_itself_and_its_length(s: String) -> (String, usize) {
    let p = s.len();
    (s, p)
}
