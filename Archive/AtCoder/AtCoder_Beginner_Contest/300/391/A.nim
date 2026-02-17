include atcoder/header
let
  d=["N","NE","E","SE","S","SW","W","NW"]
  D=nextString()
echo d[(d.find(D)+4) mod 8]