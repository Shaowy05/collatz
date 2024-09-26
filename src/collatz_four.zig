pub fn collatz(n: usize) bool {
    for (1..n + 1) |i| {
        var x = i;
        while (x & (x - 1) != 0) {
            if (x & 0b1 == 1) {
                x = 3 * x + 1;
            } else {
                x >>= 1;
            }
        }
    }

    return true;
}
