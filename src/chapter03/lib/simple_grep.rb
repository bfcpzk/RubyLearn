def simple_grep(filename, pattern)
    pat = Regexp.new(pattern)
    fileDesc = File.open(filename)
    fileDesc.each_line do |line|
        if pat =~ line then
            puts line
        end
    end
    fileDesc.close
end