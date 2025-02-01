n=int(input())
s=[input() for i in range(n)]
print(["No","Yes"][s.count("For")>s.count("Against")])