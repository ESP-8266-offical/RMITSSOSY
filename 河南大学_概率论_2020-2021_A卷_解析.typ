#set page(paper: "a4", margin: (x: 2cm, y: 2cm), footer: context [
  #set text(8pt)
  #align(center)[第 #counter(page).display() 页，共 #counter(page).final().at(0) 页]
])
#set text(font: ("New Computer Modern", "SimSun"), size: 10.5pt)
#show math.equation: set text(font: "New Computer Modern Math")
#let Cov = math.op("Cov")
#let Exp = math.op("Exp")
#let dif = math.upright("d")

#align(center)[
  #text(size: 18pt, weight: "bold")[河南大学 2020~2021 学年第二学期期末考试] \
  #text(size: 16pt, weight: "bold")[《概率论与数理统计 A》试卷 A 卷解析]
]

#v(1em)

== 一、 选择题（每小题 3 分，共 30 分）

#set enum(spacing: 1.5em)

1. 设 $P(A)=1/4, P(B|A)=1/3, P(A|B)=1/2$，则 $P(A union B)$ 等于（ *D* ）
   (A) $1/12$
   (B) $1/6$
   (C) $1/4$
   (D) $1/3$

   *解析：*
   $ P(A B) = P(A)P(B|A) = 1/4 times 1/3 = 1/12 $
   $ P(B) = P(A B) / P(A|B) = (1/12) / (1/2) = 1/6 $
   $ P(A union B) = P(A) + P(B) - P(A B) = 1/4 + 1/6 - 1/12 = 4/12 = 1/3 $

2. 设 $X tilde N(mu, sigma^2)$，则 $Z = (X-mu)/sigma$ 服从的分布是（ *A* ）
   (A) $N(0, 1)$
   (B) $N(0, sigma^2)$
   (C) $N(mu, 1)$
   (D) $N(mu, sigma^2)$

   *解析：*
   根据正态分布的性质，若 $X tilde N(mu, sigma^2)$，则其标准化变量 $Z = (X-mu)/sigma$ 服从标准正态分布 $N(0, 1)$。

3. 设随机变量 $(X, Y)$ 具有概率密度 $f(x, y) = cases(2e^{-(2x+y)} & x>0, y>0, 0 & "其他")$，则 $P{Y <= X} =$（ *A* ）
   (A) $1/3$
   (B) $1/4$
   (C) $2/5$
   (D) $4/5$

   *解析：*
   $ P{Y <= X} &= integral_0^infinity integral_0^x 2e^{-(2x+y)} dif y dif x \
   &= integral_0^infinity 2e^{-2x} [ -e^{-y} ]_0^x dif x \
   &= integral_0^infinity 2e^{-2x} (1 - e^{-x}) dif x \
   &= integral_0^infinity (2e^{-2x} - 2e^{-3x}) dif x \
   &= [ -e^{-2x} + 2/3 e^{-3x} ]_0^infinity = 0 - (-1 + 2/3) = 1/3 $

4. 对于二维随机变量 $(X, Y) tilde N(mu_1, mu_2, sigma_1^2, sigma_2^2, rho)$，则 $X$ 与 $Y$ 相互独立的充分必要条件是（ *B* ）
   (A) $rho = -1$
   (B) $rho = 0$
   (C) $rho = 0.5$
   (D) $rho = 1$

   *解析：*
   对于二维正态分布，随机变量 $X$ 与 $Y$ 相互独立的充要条件是它们不相关，即相关系数 $rho = 0$。

5. 设随机变量 $X$ 与 $Y$ 独立同分布，且 $X$ 的分布函数为 $F(x)$，则 $Z = min{X, Y}$ 的分布函数为（ *C* ）
   (A) $F^2(z)$
   (B) $2F(z)$
   (C) $1 - [1 - F(z)]^2$
   (D) $F(z)[1 - F(z)]$

   *解析：*
   $ F_Z(z) &= P{min(X, Y) <= z} = 1 - P{min(X, Y) > z} \
   &= 1 - P{X > z, Y > z} \
   &= 1 - P{X > z}P{Y > z} \
   &= 1 - [1 - F(z)]^2 $

6. 设 $E(X)=-2, E(Y)=2, D(X)=1, D(Y)=4, rho_(X Y)=-0.5$，则由切比雪夫不等式可得 $P{|X+Y| >= 6} <=$（ *D* ）
   (A) $1/2$
   (B) $1/4$
   (C) $1/8$
   (D) $1/12$

   *解析：*
   首先计算 $X+Y$ 的期望和方差：
   $ E(X+Y) = E(X) + E(Y) = -2 + 2 = 0 $
   $ D(X+Y) &= D(X) + D(Y) + 2 rho sqrt(D(X)D(Y)) \
   &= 1 + 4 + 2(-0.5)(1 times 2) = 5 - 2 = 3 $
   由切比雪夫不等式 $P{|Z - E(Z)| >= epsilon} <= D(Z)/epsilon^2$：
   $ P{|X+Y - 0| >= 6} <= 3 / 6^2 = 3 / 36 = 1/12 $

7. 设随机变量 $X tilde U(a, b)$，其中 $a$ 已知，$b$ 未知，$X_1, X_2, X_3, X_4$ 是样本，则下列选项可以作为统计量的是（ *C* ）
   (A) $1/b sum (X_i + a)$
   (B) $1/b sum (X_i - overline(X))$
   (C) $sum (X_i - a)^2$
   (D) $sum (X_i - b)^2$

   *解析：*
   统计量是样本的函数，且不含有任何未知参数。选项 A, B, D 中均含有未知参数 $b$，故只有 C 是统计量。

8. 设 $chi^2 tilde chi^2(10)$，则 $E(chi^2) + D(chi^2)$ 等于（ *C* ）
   (A) 10
   (B) 20
   (C) 30
   (D) 40

   *解析：*
   对于 $chi^2(n)$ 分布，期望 $E(chi^2) = n$，方差 $D(chi^2) = 2n$。
   本题中 $n=10$，故 $E(chi^2) + D(chi^2) = 10 + 20 = 30$。

9. 设总体 $X$ 的均值为 $mu$，方差为 $sigma^2$，$X_1, dots, X_n$ 是样本，则 $D(overline(X))$ 等于（ *D* ）
   (A) $mu$
   (B) $sigma^2$
   (C) $mu/n$
   (D) $sigma^2/n$

   *解析：*
   样本均值的方差公式：$D(overline(X)) = D(1/n sum X_i) = 1/n^2 sum D(X_i) = (n sigma^2) / n^2 = sigma^2/n$。

10. 设 $X_1, dots, X_n$ 为总体 $N(mu, sigma^2)$ 的样本，$overline(X), S^2$ 分别是样本均值和样本方差，若 $mu$ 未知，$sigma^2$ 已知，则 $mu$ 的置信水平为 $1-alpha$ 的置信区间为（ *B* ）
    (A) $(overline(X) plus.minus sigma/sqrt(n-1) z_(alpha/2))$
    (B) $(overline(X) plus.minus sigma/sqrt(n) z_(alpha/2))$
    (C) $(overline(X) plus.minus sigma/sqrt(n-1) z_alpha)$
    (D) $(overline(X) plus.minus sigma/sqrt(n) z_alpha)$

    *解析：*
    当方差 $sigma^2$ 已知时，构造统计量 $Z = (overline(X) - mu) / (sigma/sqrt(n)) tilde N(0, 1)$，由此得置信区间。

#pagebreak()

== 二、 填空题（每小题 3 分，共 15 分）

#set enum(spacing: 1.5em)

1. 已知 $P(overline(A))=0.3, P(B)=0.4, P(A overline(B))=0.5$，条件概率 $P(B | A union overline(B)) =$ #underline[ 0.25 ]。

   *解析：*
   $ P(A) = 1 - P(overline(A)) = 0.7 $
   $ P(A B) = P(A) - P(A overline(B)) = 0.7 - 0.5 = 0.2 $
   $ P(A union overline(B)) = P(A) + P(overline(B)) - P(A overline(B)) = 0.7 + 0.6 - 0.5 = 0.8 $
   $ P(B | A union overline(B)) = P(B inter (A union overline(B))) / P(A union overline(B)) = P(A B) / 0.8 = 0.2 / 0.8 = 0.25 $

2. 设 $X$ 与 $Y$ 是随机变量，且 $P{X >= 0, Y >= 0} = 3/7, P{X >= 0} = P{Y >= 0} = 4/7$，则 $P{max(X, Y) >= 0} =$ #underline[ 5/7 ]。

   *解析：*
   $max(X, Y) >= 0$ 等价于 $X >= 0$ 或 $Y >= 0$。
   $ P{X >= 0 union Y >= 0} = P{X >= 0} + P{Y >= 0} - P{X >= 0, Y >= 0} = 4/7 + 4/7 - 3/7 = 5/7 $

3. 设平面区域 $D$ 由曲线 $y=1/x$ 及直线 $y=0, x=1, x=e^2$ 所围成，二维随机变量 $(X, Y)$ 在区域 $D$ 上服从均匀分布，则 $(X, Y)$ 关于 $X$ 的边缘概率密度在 $x=2$ 处的值为 #underline[ 1/4 ]。

   *解析：*
   区域面积 $S = integral_1^{e^2} 1/x dif x = [ln x]_1^{e^2} = 2$。
   联合密度 $f(x, y) = 1/2$ (在 $D$ 内)。
   边缘密度 $f_X(x) = integral_0^{1/x} 1/2 dif y = 1/(2x), 1 <= x <= e^2$。
   当 $x=2$ 时，$f_X(2) = 1/(2 times 2) = 1/4$。

4. 设随机变量 $X_1, X_2$ 的概率密度分别为 $f_1(x)=2e^{-2x} (x>0), f_2(x)=4e^{-4x} (x>0)$。若 $X_1$ 和 $X_2$ 相互独立，则 $E(X_1 X_2) =$ #underline[ 1/8 ]。

   *解析：*
   $X_1 tilde Exp(2) arrow E(X_1) = 1/2$；$X_2 tilde Exp(4) arrow E(X_2) = 1/4$。
   由于独立，$E(X_1 X_2) = E(X_1)E(X_2) = 1/2 times 1/4 = 1/8$。

5. 设样本 $X_1, dots, X_6$ 来自总体 $N(0, 1)$，$Y = (X_1+X_2+X_3)^2 + (X_4+X_5+X_6)^2$，若 $C Y$ 服从 $chi^2$ 分布，则常数 $C =$ #underline[ 1/3 ]。

   *解析：*
   $X_1+X_2+X_3 tilde N(0, 3) arrow (X_1+X_2+X_3)/sqrt(3) tilde N(0, 1)$。
   其平方 $((X_1+X_2+X_3)^2)/3 tilde chi^2(1)$。
   同理 $((X_4+X_5+X_6)^2)/3 tilde chi^2(1)$。
   故 $Y/3 = ((X_1+X_2+X_3)^2 + (X_4+X_5+X_6)^2)/3 tilde chi^2(2)$，即 $C=1/3$。

#pagebreak()

== 三、 计算题（每小题 11 分，共 44 分）

1. 假设箱中有一个球，只知道不是白球就是红球。现在将两个白球放进箱中，然后从箱中随意取出一个球，结果是白球，求箱中原来是白球的概率？

   *解：*
   设 $H_1$ 为“箱中原球为白球”，$H_2$ 为“箱中原球为红球”。
   由题意知 $P(H_1) = P(H_2) = 1/2$。
   设 $A$ 为“取出的是白球”。
   - 若 $H_1$ 发生，箱中有 3 个白球，取出白球概率 $P(A|H_1) = 3/3 = 1$。
   - 若 $H_2$ 发生，箱中有 2 白 1 红，取出白球概率 $P(A|H_2) = 2/3$。
   由贝叶斯公式：
   $ P(H_1|A) = (P(H_1)P(A|H_1)) / (P(H_1)P(A|H_1) + P(H_2)P(A|H_2)) = (1/2 times 1) / (1/2 times 1 + 1/2 times 2/3) = 1 / (1 + 2/3) = 3/5 $

2. 设随机变量 $X$ 具有概率密度 $f_X(x) = cases(k e^{-x} & x>0, 0 & x<=0)$。
   求：(1) 常数 $k$；(2) 随机变量 $Y = e^X$ 的密度函数 $f_Y(y)$。

   *解：*
   (1) 由密度函数的归一化性质：
   $ integral_0^infinity k e^{-x} dif x = k [ -e^{-x} ]_0^infinity = k(0 - (-1)) = k = 1 $
   (2) $Y = e^X$ 是单调增函数。当 $x > 0$ 时，$y > 1$。
   反函数 $x = ln y$，导数 $dif x / dif y = 1/y$。
   $ f_Y(y) = f_X(ln y) dot |dif x / dif y| = e^{-ln y} dot 1/y = 1/y^2, quad y > 1 $
   故 $f_Y(y) = cases(1/y^2 & y>1, 0 & "其他")$。

3. 已知二维随机变量 $(X, Y)$ 在 $G$ 上服从均匀分布，$G$ 由直线 $x-y=0, x+y=2$ 与 $y=0$ 所围成，求：
   (1) 边缘概率密度 $f_X(x)$ 和 $f_Y(y)$；(2) 条件概率密度 $f_(X|Y)(x|y)$。

   *解：*
   区域 $G$ 的顶点为 $(0,0), (2,0), (1,1)$，面积 $S = 1/2 times 2 times 1 = 1$。
   联合密度 $f(x, y) = 1$ (在 $G$ 内)。
   (1) 边缘密度：
   $ f_X(x) = cases(integral_0^x 1 dif y = x & 0 <= x <= 1, integral_0^{2-x} 1 dif y = 2-x & 1 < x <= 2, 0 & "其他") $
   $ f_Y(y) = integral_y^{2-y} 1 dif x = (2-y) - y = 2-2y, quad 0 <= y <= 1 $
   (2) 条件密度：
   $ f_(X|Y)(x|y) = f(x, y) / f_Y(y) = 1 / (2-2y), quad y <= x <= 2-y, (0 <= y < 1) $

4. 设二维随机变量 $(X, Y)$ 具有概率密度 $f(x, y) = 1/8 (x+y), 0<=x<=2, 0<=y<=2$。求 $X$ 和 $Y$ 的相关系数 $rho_(X Y)$。

   *解：*
   由于对称性，$E(X) = E(Y), D(X) = D(Y)$。
   $ E(X) = integral_0^2 integral_0^2 x dot 1/8 (x+y) dif x dif y = 1/8 integral_0^2 (8/3 + 2y) dif y = 1/8 (16/3 + 4) = 7/6 $
   $ E(X^2) = integral_0^2 integral_0^2 x^2 dot 1/8 (x+y) dif x dif y = 1/8 integral_0^2 (4 + 8/3 y) dif y = 1/8 (8 + 16/3) = 5/3 $
   $ D(X) = 5/3 - (7/6)^2 = 60/36 - 49/36 = 11/36 $
   $ E(X Y) = 1/8 integral_0^2 [ 1/2 x^2 y + 1/3 x y^2 ]_0^2 dif y = 1/8 integral_0^2 (2y + 4/3 y^2) dif y = 1/8 [ y^2 + 4/9 y^3 ]_0^2 = 1/8 (4 + 32/9) = 17/18 $
   $ Cov(X, Y) = E(X Y) - E(X)E(Y) = 17/18 - (7/6)^2 = 34/36 - 49/36 = -15/36 = -5/12 $
   $ rho_(X Y) = Cov(X, Y) / sqrt(D(X)D(Y)) = (-15/36) / (11/36) = -15/11 $

#pagebreak()

== 四、 证明题（共 11 分）

1. 设总体 $X$ 的概率密度为 $f(x; theta) = 1/theta x^{(1-theta)/theta}, 0<x<1, theta>0$。
   (1) 求 $theta$ 的最大似然估计量 $hat(theta)$；(2) 证明 $hat(theta)$ 是 $theta$ 的无偏估计量。

   *证：*
   (1) 似然函数：
   $ L(theta) = product_(i=1)^n f(x_i; theta) = theta^{-n} product_(i=1)^n x_i^{(1-theta)/theta} $
   对数似然函数：
   $ ln L(theta) = -n ln theta + (1-theta)/theta sum_(i=1)^n ln x_i $
   对 $theta$ 求导并令其为 0：
   $ dif / (dif theta) ln L(theta) = -n/theta - 1/theta^2 sum_(i=1)^n ln x_i = 0 $
   解得最大似然估计量：
   $ hat(theta) = -1/n sum_(i=1)^n ln X_i $

   (2) 计算 $E(ln X)$：
   $ E(ln X) &= integral_0^1 ln x dot 1/theta x^{(1-theta)/theta} dif x \
   & "令 " t = ln x, x = e^t, dif x = e^t dif t \
   &= integral_{-infinity}^0 t dot 1/theta e^{t(1-theta)/theta} e^t dif t \
   &= 1/theta integral_{-infinity}^0 t e^{t/theta} dif t \
   & "分部积分得：" = 1/theta [ theta t e^{t/theta} - theta^2 e^{t/theta} ]_{-infinity}^0 = 1/theta (0 - theta^2) = -theta $
   因此：
   $ E(hat(theta)) = E(-1/n sum ln X_i) = -1/n sum E(ln X_i) = -1/n dot n(-theta) = theta $
   故 $hat(theta)$ 是 $theta$ 的无偏估计量。
