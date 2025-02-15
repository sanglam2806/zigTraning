const std = @import("std");

const Color = enum {
    red,
    blue,
    green,
    pink
};

pub fn main() !void {
    const color = std.meta.stringToEnum(Color,"blue") orelse {
        return error.InvalidChoice;
    };

    switch(color) {
        .red => std.debug.print("get red", .{}),
        .blue => std.debug.print("get blue", .{}),
        .green => std.debug.print("get green", .{}),
        .pink => std.debug.print("get pink", .{}),
    }
}
