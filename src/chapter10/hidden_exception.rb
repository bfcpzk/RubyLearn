# $! 代表最后发生的异常（异常对象）
# $@ 最后发生异常的位置信息

file1 = ARGV[0]
file2 = ARGV[1]

begin
    io = File.open(file1)
    puts "file1 : #{io.read}"
rescue Errno::ENOENT, Errno::EACCES
    io = File.open(file2)
    puts $!.message
    puts $!.class
    puts $@
    puts $!.backtrace
    puts "file2 : #{io.read}"
end