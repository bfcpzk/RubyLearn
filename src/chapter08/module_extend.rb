# include 可以突破继承的限制，类似Java中的interface，通过模块扩展类的功能。
# 而extend可以帮助我们跨过类，直接通过模块扩展对象的功能。

module Edition
    def edition(n)
        puts "#{self} 第#{n}版"
    end
end

str = "Ruby基础教程"
str.extend(Edition)
p str.edition(4)  #=> Ruby基础教程 第4版


# 使用extend添加类方法，使用 include 添加实例方法
module ClassMethods
    def cmethod
        "class method"
    end
end

module InstanceMethods
    def imethod
        "instance method"
    end
end

class MyClass
    #extend 添加类方法
    extend ClassMethods
    #include 添加实例方法
    include InstanceMethods
end

p MyClass.cmethod
p MyClass.new.imethod