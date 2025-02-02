const print = @import("std").debug.print;

pub fn main() void {
    const a: u4 = 0b1101;
    const b: u4 = 0b0101;

    const my_result = @addWithOverflow(a, b);

    print("{b:0>4} + {b:0>4} = {b:0>4}", .{a,b,my_result[0]});
}
