const print = @import("std").debug.print;

pub fn main () void {

    const c =  multiply(4,5);
    print("4 X 5 = {d}", .{c});
}

fn multiply(a: u8, b:u8) u64 {
    return a*b;
}
