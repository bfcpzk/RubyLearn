#在原有的类上添加方法
#在原有的String类上添加一个新的方法
class String
    def count_word
        ary = self.split(/\s+/) 
        return ary.size
    end
end

str = "Just Another Ruby String"
p str.count_word

#继承
class RingArray < Array
    def [](i)
        idx = i % self.size
        return super(idx)
    end
end

wday = RingArray["日", "月", "火", "水", "木", "金", "土"]
p wday[6] #=> "土"
p wday[11] #=> "木"
p wday[15] #=> "月"
p wday[-1] #=> "土"

#BasicObject是Object的轻量级版本
#如果不需要更多的方法的话，可以选择BasicObject去继承
puts Object.instance_methods
puts BasicObject.instance_methods