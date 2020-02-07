#times做循环的几种方法，times是通过方法进行循环的
7.times do |i|
    puts "第 #{i} 次循环"
end

#没有参数i的方法
5.times do
    puts "有do的循环"
end

#do ~ end 等价于 {~}
3.times {puts "没有do的循环"}

#计算4-8的和
sum = 0
(8 - 4 + 1).times do |i|
    sum += i + (8 - 4)
end
puts "sum : #{sum}"