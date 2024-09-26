pub fn collatz(n: usize) bool {
    for (1..n + 1) |i| {
        var x = i;
        while (x != 1) {
            if (x % 2 == 0) {
                x >>= 1;
            } else {
                x = 3 * x + 1;
            }
        }
    }

    return true;
}
