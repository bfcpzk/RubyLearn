# 创建数组的几种方法
# 1. []
nums = [1, 2, 3, 4, 5]
names = ["ha", "b"]

# 2. Array.new
a = Array.new
p a  #=> []
b = Array.new(3)
p b  #=> [nil, nil, nil]
c = Array.new(3, 5)
p c   #=>  [5, 5, 5]


# 3. %w 和 %i
arr = %w(I love Ruby)
p arr

arr1 = %i(I love Ruby)
p arr1

# 4. 利用 .to_a方法
hash = {key1: 'haha', key2: 'xixi'}
p hash.to_a

# 5. 利用 split 方法
str = 'aa bb cc'
p str.split(/\s+/)