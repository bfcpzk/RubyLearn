#什么是Symbol，和字符串很相似，也是对象，一般作为名称性标签使用
sym = :foo
sym2 = :"foo"
p sym
s_sym =  sym.to_s
p s_sym
p s_sym.to_sym

#创建散列，用{}, name => "憨憨" 或者 name: "憨憨"
address = {:name => "憨憨", :age => 10, :postal => "1234567"}
puts address
addr = {name: "憨憨", age: 10, postal: "1234567"}
p addr

#散列的读取
puts addr[:name]
addr[:name] = "铁憨憨"
puts addr[:name]
puts addr

#散列的循环 hash.each do |k, v| /prog/ end
addr.each do |k, v|
    print k, " : ", v, "\n"
    puts "#{k} : #{v}"
end