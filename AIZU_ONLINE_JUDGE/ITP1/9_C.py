n=int(input())
tp=hp=0
for i in range(n):
    tc,hc=input().split()
    tp+=(tc>hc)*3+(tc==hc)
    hp+=(hc>tc)*3+(hc==tc)
print(tp,hp)