import strutils,sequtils
var N=stdin.readLine.parseInt
echo mapIt(1..N,stdin.readLine).deduplicate.len