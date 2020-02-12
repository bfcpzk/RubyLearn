#指定需要捕捉的异常
file1 = ARGV[0]
file2 = ARGV[1]

begin
    io = File.open(file1)
    puts "file1 : #{io.read}"
rescue Errno::ENOENT, Errno::EACCES
    io = File.open(file2)
    puts "file2 : #{io.read}"
end