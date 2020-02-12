#until的用法和while完全相反
#until cond do ~ end
i = 0
sum = 0
until sum >= 50 do
    sum += i
    i += 1
end

puts "sum : #{sum}"

#省略do
i = 0
sum = 0
until sum >= 50
    sum += i
    i += 1
end
puts "sum : #{sum}"

#while_not，利用否定符号和while也可以
i = 0
sum = 0
while !(sum >= 50) do
    sum += i
    i += 1
end
puts "sum : #{sum}"