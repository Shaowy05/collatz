const std = @import("std");
const timer = std.time.Timer;

// Most basic version
const one = @import("collatz_one.zig");

// Uses bit shift to divide
const two = @import("collatz_two.zig");

// Uses AND mask for evenness check
const three = @import("collatz_three.zig");

// Uses bits to check for power of two
const four = @import("collatz_four.zig");

pub fn main() !void {
    const funs = [_](*const fn (usize) bool){ one.collatz, two.collatz, three.collatz, four.collatz };
    var runtimes: [funs.len]u64 = undefined;

    var t = try timer.start();

    for (funs, 0..) |f, i| {
        _ = f(10000000);
        runtimes[i] = timer.lap(&t);
    }

    for (runtimes, 1..) |time, i| {
        std.debug.print("{}: {}\n", .{ i, time });
    }
}
