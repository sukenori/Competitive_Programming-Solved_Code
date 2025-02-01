include atcoder/header
let Y=nextInt()
if Y mod 4!=0: echo 365
elif Y mod 100!=0: echo 366
elif Y mod 400!=0: echo 365
else: echo 366