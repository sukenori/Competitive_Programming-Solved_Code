include atcoder/header
let A,B,C=nextInt()
echo if (C<B and A in C..B) or (B<C and A in 0..B or A in C..23): "Yes" else: "No"