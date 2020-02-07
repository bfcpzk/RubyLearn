filename = ARGV[0]
pattern= Regexp.new(ARGV[1])
fileDesc = File.open(filename)
MAX_MATCH = 2
matched = 0
fileDesc.each_line do |line|
    if matched == MAX_MATCH
        break
    end
    if pattern =~ line then
        matched += 1
        puts line
    end
end
fileDesc.close