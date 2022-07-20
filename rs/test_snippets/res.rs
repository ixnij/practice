fn main() {
    let mut st: String;
    let s = be_called_function(&mut st, 10);
    println!("{}", s);
}

fn be_called_function(s: &mut String, n: u32) -> String {
    if n == 0 {
	s = String::from("Zero");
	s
    } else {
	s.insert_str(0, be_called_function(s, n - 1).as_str());
	s
    }
}
