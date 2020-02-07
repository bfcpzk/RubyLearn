#self.name并不是调用属性，而是调用name的getter方法，
#self用于同一个对象的实例方法上
class HelloWorld
    attr_accessor :name
    def hello
        puts "Hello world, I am #{self.name}"
    end

    def test_name
        name = "Ruby" #为局部变量name赋值
        self.name = "Ruby" #调用 name= 方法
    end
end

obj = HelloWorld.new
obj.name = "tom"
obj.hello