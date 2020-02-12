# 1. 执行块
def myloop
    while true
        yield    #传入的块会替代yield
    end
end

num = 1
myloop {
    puts "num is #{num}"
    break if num > 100
    num *= 2
}

# 2. 传递块参数，获取块的值
def total(from, to)
    result = 0
    from.upto(to) do |num|
        if block_given?
            result += yield(num)
        else
            result += num
        end
    end
    puts result
end

p total(1, 10)
p total(1, 10) {|num| num * num}

# 2.2 传递不通数量块参数的执行效果
def block_args_tests
    yield()
    yield(1)
    yield(1, 2, 3)
end

block_args_tests {|a|
    p [a]
}

block_args_tests {|a, b, c|
    p [a, b, c]
}

block_args_tests {|*a| #按照数组来接收参数
    p [a]
}

# hash 参数绑定
hash_table = {a: 100, b: 200, c: 300}
hash_table.each_with_index do |(key, value), index|
    p [key, value, index]
end

# 3. 控制块的执行
n = total(1, 10) do |num|
    if num == 5
        break num   #break 程序回到调用块的地方，块的返回值会被忽略，所以要在break 后面接上数字，作为返回值
    end
    num
end
p n

#next 的返回值原理和break一样
n = total(1, 10) do |num|
    if num % 2 != 0
        next 0
    end
    num
end
p n

# 4. 将块封装为对象，利用Proc.new
hello = Proc.new do |name|
    puts "Hello, I am #{name}"
end

hello.call("Ruby")
hello.call("Mike")

def total2(from, to, &block)
    result = 0
    from.upto(to) do |num|
        if block
            result += block.call(num)
        else
            result += num
        end
    end
    result
end

puts total2(1, 10) {|num| num ** 2}

# call_each
def call_each(arr, &block)
    arr.each(&block)
end

call_each [1, 2, 3] { |i|
    puts i
}