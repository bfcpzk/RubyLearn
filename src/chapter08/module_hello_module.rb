module HelloModule
    Version = "1.0"

    def hello(name)
        puts "Hello, #{name}."
    end

    module_function :hello #只是让 modulename.method 用法生效
end

p HelloModule::Version
HelloModule.hello("Alice")

include HelloModule
p Version
hello("Alice")

module FooMoudle 
    def foo
        p self 
    end
    module_function :foo 
end

FooMoudle.foo #=> FooMoudle