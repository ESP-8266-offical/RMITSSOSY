import matplotlib.pyplot as plt
import numpy as np

# 设置中文字体 (Windows 常用字体)
plt.rcParams['font.sans-serif'] = ['SimHei']
plt.rcParams['axes.unicode_minus'] = False

# 定义区域 D 的边界
x = np.linspace(1, np.exp(2), 400)
y_upper = 1/x
y_lower = np.zeros_like(x)

plt.figure(figsize=(8, 5))
plt.plot(x, y_upper, 'r-', label=r'$y=1/x$')
plt.axhline(0, color='black', lw=1)
plt.axvline(1, color='blue', linestyle='--', label=r'$x=1$')
plt.axvline(np.exp(2), color='green', linestyle='--', label=r'$x=e^2$')

# 填充区域 D
plt.fill_between(x, y_lower, y_upper, color='gray', alpha=0.3, label='区域 D')

# 标记 x=2 处
plt.axvline(2, color='orange', linestyle=':', lw=2, label=r'$x=2$')
plt.plot([2, 2], [0, 0.5], 'orange', lw=2)

plt.title('填空题第3题：区域 D 示意图')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.grid(True, linestyle=':', alpha=0.6)

# 保存图片
plt.savefig('c:/RMITSSOSY-1/problem_2_3_region.png', dpi=300, bbox_inches='tight')
plt.close()
