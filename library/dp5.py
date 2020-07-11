# n個の正の整数 a[0]a[1],…,a[n−1] と正の整数Aが与えられる。
# これらの整数から何個かの整数を選んで総和がAにする方法をすべて考えた時、選ぶ整数の個数の最小値を求めよ。
# Aにすることができない場合は-1と出力せよ。

#写経

N = 5
a = [7, 5, 3, 1, 8]
A = 12

INF = 9999999999
dp = [0 if i==0 else INF for i in range(A + 1)]
# print(dp)
# print(len(dp))


for i in range(N):
    dp_tmp = []
    for j in range(A + 1):
        print(j)
        if (j >= a[i]):
            dp_next = min(dp[j-a[i]] + 1, dp[j])
        else:
            dp_next = dp[j]
        dp_tmp.append(dp_next)
    dp = dp_tmp
   

if dp[-1] != INF:
    print(dp[-1])
else:
    print(-1)