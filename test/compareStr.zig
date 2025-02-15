const std = @import("std");

pub fn main() void {
    const a = "aaaaa";
    const b = "bbbbb";

    const c = std.mem.eql(u8, a, b);

    std.debug.print("compare result is {}",.{c});
}


