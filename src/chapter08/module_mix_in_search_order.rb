# 1. 同继承关系一样，原类中已经定义了同名方法时，优先使用该方法。
module M
    def meth
        "M#meth"
    end
end

class C
    include M
    def meth
        "C#meth"
    end
end

p C.new.meth

# 2. 在同一个类中包含多个模块时，优先使用最后一个包含的模块
module M21
    def meth
        "M21#meth"
    end
end

module M22
    def meth
        "M22#meth"
    end
end

class C21
    include M21
    include M22
end

p C21.new.meth  #=> "M22#meth"
p C21.ancestors  #=> [C21, M22, M21, Object, Kernel, BasicObject]

# 3. 嵌套include时，查找顺序也是线性的
module M31
end

module M32

end

module M33
    include M32
end

class C31
    include M31
    include M33
end

p C31.ancestors  #=> [C31, M33, M32, M31, Object, Kernel, BasicObject]

# 4. 相同的模块被包含2次以上，第2次以后的会被省略
module M41
end

module M42
end

class C41
    include M41
    include M42
    include M41
end

p C41.ancestors  #=> [C41, M42, M41, Object, Kernel, BasicObject]