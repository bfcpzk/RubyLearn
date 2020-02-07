#class 类名 (首字母大写)
#    类的定义
#end
class HelloWorld
    def initialize(myname = 'Ruby')
        @name = myname
    end

    def hello
        puts "Hello world, I am #{@name}"
    end
end

bob = HelloWorld.new('Bob')
mary = HelloWorld.new('Mary')
anyone = HelloWorld.new

puts bob.hello
puts mary.hello
puts anyone.hello
