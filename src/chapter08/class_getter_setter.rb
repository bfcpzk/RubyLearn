class HelloWorld
    def initialize(myname = 'Ruby')
        @name = myname
    end

    def name
        puts "getter"
        @name
    end

    def name=(value)
        puts "setter"
        @name = value
    end
end

hw = HelloWorld.new
puts hw.name
hw.name = 'peter'
puts hw.name

puts "===================="
#简化getter 和 setter
class HelloWorldAccessor
    def initialize(myname = 'Ruby')
        @name = myname
        @set = "set"
        @get = "get"
    end
    attr_accessor :name
    attr_reader :get
    attr_writer :set
end

hw1 = HelloWorldAccessor.new
puts hw1.name
hw1.name = 'Mike'
puts hw1.name

puts hw1.get
hw1.set = "hahaha"
