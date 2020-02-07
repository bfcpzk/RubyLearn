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

#while_not
i = 0
sum = 0
while !(sum >= 50) do
    sum += i
    i += 1
end
puts "sum : #{sum}"