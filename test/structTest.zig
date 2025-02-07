const print = @import("std").debug.print;

const Role = enum {
    Developer,
    Tester,
    Operator,
    Manger,
};

const Employee = struct{
    name : []const u8,
    age : u8,
    role: Role,
};

pub fn main() void {
    const na_chan = Employee{
        .name = "moena",
        .age = 24,
        .role = Role.Tester,
    };

    const mitsu = Employee {
        .name = "mitsuru",
        .age = 29,
        .role = Role.Developer,
    };

    var step23 :[2]Employee = undefined;
    
    step23[0] = na_chan;
    step23[1] = mitsu;

    for(step23) |mem| {
        print("{s} is {d} years old\n", .{mem.name, mem.age});
    }
}
