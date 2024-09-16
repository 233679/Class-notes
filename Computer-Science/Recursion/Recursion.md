A common example of a recursive algorithm is the mathematical factorial operation (e.g 5!). This is because the formula for it can be defined in terms of itself: $n = n\times(n - 1)!$ 

A recursive method must call itself at some point within itself. E.g:
```rust
fn calc(num: u128) -> u128 {
    if num == 0 {
        return 1;
    }
  
    num * calc(num - 1)
}
```

If the recursive function has too many recursion, or recurses infinitely. Then a stack overflow error will occur, as the stack will get filled up. This will crash the program.