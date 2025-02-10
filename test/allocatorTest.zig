const std = @import("std");

pub fn main () void{
    const allocator = std.heap.page_allocator;

    const memmory = try allocator.alloc(u8,100);

    std.debug.print("Test allocaltor with value is {}", .{memmory});
}

