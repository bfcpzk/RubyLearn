file = File.open(ARGV[0])
file.each_line do |line|
    next if /^\s$/ =~ line #跳过空行
    next if /^#/ =~ line #跳过以#开头
    puts line
end
file.close