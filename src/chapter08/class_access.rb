#ruby的访问限制，只有public，private，protected
class AccTest
    def pub
        puts "This is a public method."
    end

    def pub2
        puts "This is a public method2."
    end

    public :pub
    public :pub2

    def priv
        puts "This is a private method."
    end

    private :priv
end

acc = AccTest.new
acc.pub
acc.pub2
#acc.priv

#当多个方法定义访问权限的时候，可以写一个，后面的方法自动都是相同的访问权限
class AccTest1
    public

    def pub
        puts "This is a public method."
    end

    def pub2
        puts "This is a public method2."
    end

    private

    def priv
        puts "This is a private method."
    end

end

acc = AccTest.new
acc.pub
acc.pub2
acc.priv