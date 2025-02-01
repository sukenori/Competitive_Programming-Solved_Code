var a,b:int
import strutils,sequtils
(a,b)=stdin.readLine.split.map parseInt
echo if a*b mod 2==1:"Odd" else:"Even"