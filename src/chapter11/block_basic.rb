# 对象.方法名(参数列表) do |块变量|  希望循环的处理 end
# 对象.方法名(参数列表) {|块变量|  希望循环的处理}

[1,2,3,4,5].each do |num|
    puts num
end

['a', 'e', 'i', 'o', 'u'].each {|character|
    puts character.upcase
}

#作用于hash，块变量为pair
sum = 0
outcome = {参加费: 1000, 挂件费用: 1000, 联欢会费用: 4000}
outcome.each do |pair|
    sum += pair[1]
end
puts "合计：#{sum}"
p outcome[:参加费]

#作用于hash，块变量为pair
sum1 = 0
outcome.each do |item, price|
    sum1 += price
end
puts "合计1：#{sum1}"

#作用于file
file = File.open('sample.txt')
file.each_line do |line|
    puts line
end
file.close

#作用于file，File.open()时调用块，可以省略手动关闭文件
File.open('sample.txt') do |fd|
    fd.each_char do |line|
        puts line
    end
end

#上面的操作等同于
fd = File.open("sample.txt")
begin
    fd.each_char do |char|
        puts char
    end
rescue => exception
    puts exception.message
ensure
    fd.close
end