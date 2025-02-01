q=int(input())
import heapq
hq=[]
for i in range(q):
    qu=input()
    if qu[0]=="1": heapq.heappush(hq,int(qu[2:]))
    if qu[0]=="2": print(hq[0])
    if qu[0]=="3": heapq.heappop(hq)