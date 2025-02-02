const print = @import("std").debug.print;

const Example = struct {
    const size = 5;
    arrayTest: [size]u8 = .{14} ** size,
};

pub fn main() void {
    const example = Example{};
    print("Array: {any}\n", .{example.arrayTest}); 

}
