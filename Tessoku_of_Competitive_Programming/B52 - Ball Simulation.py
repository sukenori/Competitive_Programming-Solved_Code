n,x=map(int,input().split())
a=list(input())
q=[x-1]; a[x-1]="@"
while q:
    p=q.pop(0)
    if p-1>=0 and a[p-1]==".":
        a[p-1]="@"
        q.append(p-1)
    if p+1<=n-1 and a[p+1]==".":
        a[p+1]="@"
        q.append(p+1)
print("".join(a))