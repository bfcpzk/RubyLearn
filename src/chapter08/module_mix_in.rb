#mix_in的基本用法
module M
    def meth
        "meth"
    end
end

class C
    include M
end

#类C包含模块M后，模块M中定义的方法就可以作为类C的实例方法供程序调用。
c = C.new
p c.meth  #=> "meth"
p C.include?(M)  #=> true
p C.ancestors  #=> [C, M, Object, Kernel, BasicObject]
p C.superclass  #=> Object