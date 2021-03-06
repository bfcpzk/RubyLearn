require "pp"

#合并执行多个赋值操作
a,b,c = 10,20,30
p "a = #{a}, b = #{b}, c = #{c}"

#值不够多，c就是nil
a,b,c = 10,20
p "a = #{a}, b = #{b}, c = #{c}"

#值比变量多，多的值会被省略，40没有主
a,b,c = 10,20,30,40
p "a = #{a}, b = #{b}, c = #{c}"

#交换变量
a, b = b, a
p "a = #{a}, b = #{b}"

#获取数组元素
arr = [1,2]
a, b = arr
p "a = #{a}, b = #{b}"

#获取部分元素
a, = arr
p "a = #{a}"

#获取嵌套数组元素
arr = [1, [2, 3], 4]
a, b, c = arr
p "a = #{a}, b = #{b}, c = #{c}"

a, (b1, b2), c = arr
p "a = #{a}, b1 = #{b1}, b2 = #{b2}, c = #{c}"