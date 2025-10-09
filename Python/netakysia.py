#1 задание
a = [1, 2, 3, 4, 5]
result = []
for i in range(0, len(a), 2):
    result.append(a[i])
print(result)
#2 задание
b = [1, 2, 2, 3, 3, 3, 4]
result2 = []
for number in b:
    if number % 2 == 0:
        result2.append(number)
print(result2)
#3 задание
c = [1, -2, 3, -4, 5]
result3 = []
for number in c:
    if number > 0:
        result3.append(number)
print(len(result3))
#4 задание
d = [1, 5, 2, 4, 3]
result4 = []
for i in range(1, len(d)):
        if d[i] > d[i - 1]:
            result4.append(d[i])
print(result4)
#5 задание
e = [-1, 2, 3, -1, -2]
for i in range(len(e) - 1):
     if e[i] * e[i + 1] > 0:
        print(e[i], e[i + 1])
        break
#6 задание
f = [1, 2, 3, 4, 5]
g = [1, 5, 1, 5, 1]
count = 0
count1 = 0
for i in range(1, len(f) - 1):
    if f[i] > f[i - 1] and f[i] > f[i + 1]:
        count += 1
print(count)
for i in range(1, len(g) - 1):
    if g[i] > g[i - 1] and g[i] > g[i + 1]:
        count1 += 1
print(count1)
#7 задание
h = [1, 2, 3, 2, 1]
h1 = max(h)
print(h1, h.index(h1))
#8 задание
j = [5, -4, 3, -2, 1]
min_positive = 1001
for x in j:
    if x > 0 and x < min_positive:
        min_positive = x
print(min_positive)
#9 задание
k = [0, 1, 2, 3, 4]
minimalka = 1001
for y in k:
    if y % 2 != 0 and y < minimalka:   # ищем нечетные!
        minimalka = y
if minimalka == 1001:
    print(0)
else:
    print(minimalka)

k1 = [2, 4, 6, 8, 10]
minimalka = 1001   # сбрасываем значение перед новым списком
for y in k1:
    if y % 2 != 0 and y < minimalka:
        minimalka = y
if minimalka == 1001:
    print(0)
else:
    print(minimalka)
#10 задание
l = [165, 163, 160, 160, 157, 157, 155, 154]
p = 162
pos = 1
for o in l:
    if o >= p:
        pos += 1
print(pos)

l1 = [165, 163, 160, 160, 157, 157, 155, 154]
p1 = 160
pos1 = 1
for o1 in l1:
    if o1 >= p1:
        pos1 += 1
print(pos1)
