# 数组索引的使用方法
# 1. a[n]
nums = [1,2,3,4,5]
p nums[1]
p nums[-1]

# 2. a[n..m] / a[n...m]
nums = [1,2,3,4,5]
p nums[1..2]
p nums[1...4]
p nums[3,6]

# 3. a[n, len]
nums = [1,2,3,4,5]
p nums[1, 3]

# 4. 不常用 a.at(n) / a.slice(n)
nums = [1,2,3,4,5]
p nums.at(3)
p nums.slice(1)
p nums.slice(2..3)
p nums.slice(2, 3)
p nums
