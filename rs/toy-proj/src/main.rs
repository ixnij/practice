#[derive(Debug)]
struct Commands {
    shell_command: String,
    shell_kind: String,
    one: u8,
    two: (u32, u32),
}

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
    let younre: Commands = Commands {
        shell_command: String::from("pwd"),
        shell_kind: String::from("/bin/ksh"),
        one: 2,
        two: (3333, 33333333),
    };
    let p: Commands = Commands {
        shell_command: String::from("ls -lha"),
        shell_kind: String::from("/bin/zsh"),
        ..younre
    };

    println!("{:#?}", p);
    println!(
        "{} {} {} {}",
        younre.shell_command, younre.shell_kind, younre.one, younre.two.0
    );
    let mut _p: String = format!("{:#?}", p);
    _p.push_str("pri");
    _p += "aware";
}

fn add_something_to_my_string(sth: &str, will_be_changes: &mut String) -> () {
    will_be_changes.push_str(sth);
}

fn returns_itself_and_its_length(s: String) -> (String, usize) {
    let p = s.len();
    (s, p)
}
