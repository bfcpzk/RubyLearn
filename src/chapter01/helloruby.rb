print("Hello Ruby.\n")

print("Hello\n Ruby\n.\n")

print("Hello
Ruby
     .\n")

print("Hello \"Ruby\".\n")

print("Hello \\ Ruby.\n")

print('Hello \nRuby\n.\n')

print "\nhello", " ", "Ruby", ".", "\n"

#puts 自带换行幅
puts "Hello Ruby."

#puts 多参数传递会使得每个参数都有换行
puts "Hello, ", 'Ruby'

#p方法不会转译\n,\t，但是可以区分数据类型
p '100'
p 100


#方法和变量
width = 10
length = 20
area = length * width
print("表面积是: #{area}\n")
puts("表面积是: #{area}")