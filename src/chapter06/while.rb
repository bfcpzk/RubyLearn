#while的用法: while cond do ~ end
sum = 0
i = 0
while sum < 50 do
    sum += i
    i += 1
end
puts "sum : #{sum}"

#while的用法: while cond ~ end
sum = 0
i = 0
while i < 5
    sum += i
    i += 1
end
puts "sum : #{sum}"