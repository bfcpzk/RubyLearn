#ARGV是传递命令行参数的数组，传递都是字符串格式的

puts "第一个参数：#{ARGV[0]}"
puts "第二个参数：#{ARGV[1]}"

#输入参数是数值，进行转换
num1 = ARGV[2].to_i
num2 = ARGV[3].to_i
puts (num1 * num2)