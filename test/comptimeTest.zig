const print = @import("std").debug.print;

const size = 5;
const test_slice = [5]u8{1,2,3,4,5};

fn getValueOfIndex(comptime i: usize) u8 {
    comptime isAlive( i < size);
    return test_slice[i];
}

fn isAlive (ok: bool) void {
    if (!ok) unreachable;
}

pub fn main () void {
    const x = getValueOfIndex(size - 1);

    print("the last value of slice is {d} ", .{x});
}
