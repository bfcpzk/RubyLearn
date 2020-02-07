ary1 = []
ary2 = []
p ary1.object_id #=> 67653636 
p ary2.object_id #=> 67650432

#我们用 equals() 方法判断两个对象是否同一个对象(ID 是否相同)。
str1 = "foo"
str2 = str1 
str3="f"+"o"+"o"
p str1.equal?(str2) #=> true
p str1.equal?(str3) #=> false

#对象的“值”就是对象拥有的信息。例如，只要对象的字符串内容相等，
#Ruby 就会认为对象的值相等。Ruby 使用 == 来判断对象的值是否相等。
str1 = "foo" 
str2="f"+"o"+"o"
p str1 == str2 #=> true

#除了 == 以外，Ruby 还提供eql?方法用来判断对象的值是否相等。
#==与eql?都是Object类定义的方法，大部分情况下它们的执行结果都是一样
p 1.0 == 1 #=> true 
p 1.0.eql?(1) #=> false

hash={0=>"0"}
p hash[0.0] #=> nil 
p hash[0] #=> "0"