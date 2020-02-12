nums = [1,2,3,4]
for i in 2..3 {
    p nums[i]
}

sum = 0
nums.each do |i|
    sum += i
end
p sum

nums.each_with_index do |n, i|
    put "第#{i}个元素是：#{n}"
end