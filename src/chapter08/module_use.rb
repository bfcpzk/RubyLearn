#使用"模块名.方法名"的形式来调用在模块中定义的方法，这样的方法称为模块函数
p FileTest.exist?('/usr/bin/ruby')
p FileTest.size('/usr/bin/ruby')

#如果没有定义与模块内的方法、常量等同名的名称，那么引用时就可以省略模块名。
#通过 include 可以把模块内的方法名、常量名合并到当前的命名空间。
p Math::PI
p Math.sqrt(2)

include Math
p PI
p sqrt(2)

# Mix-in 就是将模块混合到类中。
# 在定义类时使用 include，模块里的方法、常量就都能被类使用。
# 1. 虽然两个类拥有相似的功能，但是不希望把它们作为相同的种类(Class)来考虑的时候
# 2. Ruby 不支持父类的多重继承，因此无法对已经继承的类添加共通的功能的时候
module MyModule
    def hello
        puts "#{self} says hello."
    end
end

class MyClass1
    include MyModule

    def to_s
        "MyClass1"
    end
end

class MyClass2
    include MyModule

    def to_s
        "MyClass2"
    end
end

p MyClass1.new.hello
p MyClass2.new.hello