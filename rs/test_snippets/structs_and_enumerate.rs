#[derive(Debug)]
struct myStruct {
    str_mem1: String,
    str_mem2: u8,
}

enum Prs {
    conds(u32),
    conds1 { conds_sub1: u32, conds_sub2: String },
}

fn main() {
    let z: myStruct = myStruct {
	str_mem1: String::from("open"),
	str_mem2: 22,
    };
    let q: Prs = Prs::conds(23);
    println!("{:#?}", z);
}
