#case when1 when2 else 
#case的一般用法
a = [1, "aaa", 4]
a.each do |elem|
    case elem
    when 1,3,5
        puts "奇数"
    when 2,4,6
        puts "偶数"
    when "aaa", "bbb"
        puts "字符串#{elem}"
    else
        puts "其他"
    end
end

#case 的所属 class 的用法
array = ["a", 1, nil]
array.each do |elem|
    case elem
    when Numeric
        puts "#{elem} 是数值对象"
    when String
        puts "#{elem} 是字符串对象"
    else 
        puts "#{elem} 什么也不是"
    end
end

#case 的正则表达式用法 /^$/ ^表示匹配的字符串开始，需要在首位，中间出现不算 $表示结尾，中间出现不算
fileDesc = File.open('../../data.txt')
fileDesc.each_line do |line|
    case line
    when /Hadoop/i
        puts "hadoop : #{line}"
    when /^spark/i
        puts "spark : #{line}"
    when /^Ruby/i
        puts "ruby : #{line}"
    else
        puts "nothing"
    end
end
fileDesc.close

#when 的用法实际上是利用了 === 的表示, when A 等价于 A === 'item', 
#请注意 指定的对象在 === h 的左边。
#p (/zz/ === "xyzzy") #=> true   === 可以理解为 =~
#p (String === "xyzzy") #=> true  
#p ((1..3) === 2) #=> true