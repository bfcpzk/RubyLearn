# 数组的常用操作
# 1. 为数组添加元素
nums = [1,2,3,4,5]
nums.unshift(0)
p nums
nums.push(6)
p nums
nums << 7
p nums

other = [8,9]
otherNums = nums + other
p otherNums
p nums
nums.concat(other)
p nums

nums[1] = 10
nums[1..3] = [11,2]
nums[5, 3] = [9, 9, 9]
p nums

# 2. 删除元素
nums = [1,nil,3,4,5]
nums.compact
p nums
p nums.compact
nums.compact!
p nums

nums.delete(3)
p nums
nums.delete_at(2)
p nums
nums.delete_if{|i| i > 3}
p nums

nums = [1,2,3,4,5]

p nums.reject{|i| i > 3}
p nums
nums.reject!{|i| i > 4}
p nums

nums.slice!(1)
p nums
nums.slice!(1..2)
p nums
nums = [1,2,3,4,5]
nums.slice!(1, 2)
p nums

nums = [1,2,2,3,3,4]
p nums.uniq
p nums
nums.uniq!
p nums

nums.pop
p nums
nums.shift
p nums

# 3. 数组替换元素
nums = [1,2,3,4,5]
nums.collect!{|elem| elem * 2}
p nums
p nums.map{|x| x * 3}

p [1,2,3,4,5].fill(0) #=> [0,0,0,0,0]
p [1,2,3,4,5].fill(0, 2) #=> [1,2,0,0,0]
p [1,2,3,4,5].fill(19, 2, 3) #=> [1,2,19,19,19]
p [1,2,3,4,5].fill(0, 2..3) #=> [1,2,0,0,5]

nums = [1, [3], [4,5, [6]]]
nums.flatten!
p nums

nums.reverse!
p nums

nums = [2,5,2,3,1]
nums.sort!
p nums
nums = [2,5,2,3,1]
nums.sort!{|i, j| j <=> i}
p nums

nums = [1,3,2,5,4]
p nums.sort_by{|i| i}