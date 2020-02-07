puts "一次性读取全部文件"
filename = ARGV[0]
fileDesc = File.open(filename)
text = fileDesc.read
print text
fileDesc.close

puts "\n========"
puts "一次性读取全部文件，一行实现"
puts File.read(ARGV[0])

puts "========"
puts "逐行读取文件"

fileName = ARGV[0]
fileDesc = File.open(fileName)
fileDesc.each_line do |line|
    puts line
end
fileDesc.close

puts "=========="
puts "从文件中读取指定内容（行）并输出"

pattern = Regexp.new("Ruby")
fileName = ARGV[0]
fileDesc = File.open(filename)
fileDesc.each_line do |line|
    if pattern =~ line then
        puts line
    end
end
fileDesc.close