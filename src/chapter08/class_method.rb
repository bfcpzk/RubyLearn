#类方法书写的四种方式
#class << CName | seld
# ~
#end
class HelloWorld1
    class << HelloWorld1
        def hello(name)
            puts "#{name} said hello."
        end
    end
end

HelloWorld1.hello('peter')

class HelloWorld2
    class << self
        def hello(name)
            puts "#{name} said hello."
        end
    end
end

HelloWorld2.hello('peter')

# def (CName | self) .method()
#  ~
# end

class HelloWorld3
    def HelloWorld3.hello(name)
        puts "#{name} said hello."
    end
end

HelloWorld3.hello('peter')

class HelloWorld4
    def self.hello(name)
        puts "#{name} said hello."
    end
end

HelloWorld4.hello('peter')