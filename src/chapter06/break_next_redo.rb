array = ['Perl', 'Python', 'Ruby', 'Java', 'Scheme']
puts "======break======"
i = 0
array.each do |elem|
    i += 1
    if i == 3
        break
    end
    p [i, elem]
end

puts "======next======"

i = 0
array.each do |elem|
    i += 1
    if i == 3
        next
    end
    p [i, elem]
end

puts "======redo======"

i = 0
array.each do |elem|
    i += 1
    if i == 3
        redo
    end
    p [i, elem]
end