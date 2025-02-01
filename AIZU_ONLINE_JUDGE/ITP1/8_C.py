i=""
while True:
    try: i+=input().lower()
    except: break
for _ in range(97,123):
    print(chr(_)+" : "+str(i.count(chr(_))))