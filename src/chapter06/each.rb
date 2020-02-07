#each的用法：
#arr.each do |elem|
#  prog
#end
sum = 0
arr = [1,2,3,4,5]
arr.each do |elem|
    sum += elem
end
puts "sum : #{sum}"

#arr.each {|elem| prog}
sum = 0
arr.each { |elem|
    sum += elem
}
puts "sum : #{sum}"