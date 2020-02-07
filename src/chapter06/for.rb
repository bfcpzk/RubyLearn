#for的用法：只能用do ~ end 或者省略do
for i in 1..5 do
    puts "#{i}"
end

for i in 1..5 
    puts "#{i}"
end

#计算4-8的和
sum = 0
for i in 4..8
    sum += i
end
puts "sum : #{sum}"

#用for打印数组元素
arr = ["aaa", "bbb", "ccc", "ddd"]
for elem in arr
    puts elem
end