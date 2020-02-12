#数组元素赋值
nums = [1,2,3,4,5]
nums[1] = 10
p nums

nums = [1,2,3,4,5]
nums[2..3] = 6
p nums

nums = [1,2,3,4,5]
nums[2, 3] = [6,6]
p nums

#插入元素
nums = [1,2,3,4,5]
nums[2, 0] = [777, 888]
p nums

# 不同位置插入多个元素
nums = [1,2,3,4,5]
q = nums.values_at(1,3,4)
p q