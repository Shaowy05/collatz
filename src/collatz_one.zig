pub fn collatz(n: usize) bool {
    for (1..n + 1) |i| {
        var x = i;
        while (x != 1) {
            if (x % 2 == 0) {
                x /= 2;
            } else {
                x = x * 3 + 1;
            }
        }
    }

    return true;
}
