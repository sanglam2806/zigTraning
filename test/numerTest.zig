const print = @import("std").debug.print;

pub fn main () void {
    const number1 :i32 = 5;
    const number2 :i16 = number1;

    print("number 2 is {d}\n",.{number2});
}

