const std = @import("std");
fn printBytes(data: [] const u8) void {
    // The function need const in param when argument declare in CONST
    for (data) |byte| {
        std.debug.print("{d} ", .{byte});
    }
    std.debug.print("\n", .{});
}

pub fn main() void {
    const buffer = [_]u8{1, 2, 3, 4, 5};
    printBytes(&buffer); // Passes a slice to the function
    // Need address-of operator (&) to coerce to slide type into function argument
}
