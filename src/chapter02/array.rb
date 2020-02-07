#数组的创建
names = ["憨憨1", "憨憨2", "憨憨3"]

#对象未确定,用[]创建
persons = []

#访问数组中的数据,read
puts("第一个名字是：#{names[0]}")

#更新数组中某个对象,write
puts("第二个名字是：#{names[1]}")
names[1] = "傻憨憨"
puts("第二个名字是：#{names[1]}")

#数组的类型还可以是数值型，可以混合
num = [3,1,4,1,5,9,2,6]
mixed = [3,2,"憨憨", 4, "铁憨憨"]
print num, "\n"
puts mixed

#数组的大小 array.size
puts num.size

#数组的遍历 arr.each do |xx| 方法
names.each do |n|
    puts n
end