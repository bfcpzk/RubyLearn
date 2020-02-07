#返回值为 true 或 false 的方法末尾一般有"?"
p "".empty?
p "AAA".empty?

#真: false和nil以外的所有对象
#假: false和nil

#if_elsif_else例子
a = 10
b = 9
if a > b
    puts "a 比 b 大"
elsif a < b
    puts "a 比 b 小"
else
    puts "a 和 b 相等"
end

#if 和 unless 修饰符
a = 19
b = 16
puts "desc a 比 b 大" if a > b