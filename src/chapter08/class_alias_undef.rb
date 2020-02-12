#alias 对方法进行重命名
#alias new_name old_name 
#alias : new_name : old_name

class C1
    def hello
        return "Hello"
    end
end

class C2 < C1
    alias old_hello hello
    def hello
        puts "#{old_hello}, again."
    end
end

obj = C2.new
p obj.old_hello   #=> "Hello"
p obj.hello   #=> "Hello, again."

#undef 方法名
#undef : 方法名
class C3 < C1
    undef hello
end

obj = C3.new
p obj.hello #=> exception