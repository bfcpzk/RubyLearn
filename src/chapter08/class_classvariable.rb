#类变量
class HelloWorld
    @@count = 0

    def initialize(name = "Ruby")
        @name = name
    end

    def hello
        @@count += 1
        puts "#{@name} said hello"
    end

    def self.getCount
        puts "#{@@count} persons said hello"
    end
end

bob = HelloWorld.new('bob')
alice = HelloWorld.new('alice')
ruby = HelloWorld.new

bob.hello
alice.hello
ruby.hello

HelloWorld.getCount
