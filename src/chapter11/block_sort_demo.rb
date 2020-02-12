array = ["ruby", "Perl", "PHP", "Python"]
sorted = array.sort
p sorted #=> ["PHP", "Perl", "Python", "ruby"]

#利用 block 中的 <=> 排序数组, <=> 必须作为块的最后一个表达式，块的最后一个表达式就是块的执行结果
sorted = array.sort{|a, b| a <=> b}
p sorted

#根据字符串长度排序
sorted = array.sort{|a, b| a.length <=> b.length}
p sorted

#记录block的调用次数
call_num = 0
sorted = array.sort{ |a, b|
    call_num += 1
    a.length <=> b.length
}
p call_num

sorted = array.sort_by{|item|
    item.length
}
p sorted