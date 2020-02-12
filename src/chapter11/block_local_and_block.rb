# 局部变量和块变量
x = 1
y = 1
arr = [1, 2, 3]

arr.each do |x|
    y = x
end

p [x, y]   #=> [1, 3]

x = y = z = 0
arr = [1, 2, 3]
arr.each do |x, y|
    y = x
    z = x
    p [x, y, z]
end
puts
p [x, y, z]


