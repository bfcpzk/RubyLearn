# 使用 begin ~ rescue ~ end 来捕获异常
# 实现Linux wc命令
ltotal = 0
wtotal = 0
ctotal = 0
ARGV.each do |file|
    begin
        fileDesc = File.open(file)
        l = 0
        w = 0
        c = 0
        fileDesc.each do |line|
            l += 1
            c += line.size
            line.sub!(/^\s+/, "")
            arr = line.split(/\s+/)
            w += arr.size
        end
        fileDesc.close
        puts "lines : #{l}, words : #{w}, charaters : #{c}, file : #{file}"
        ltotal += l
        wtotal += w
        ctotal += c
    rescue => exception
        puts exception.message
    end
    puts "lines : #{ltotal}, words : #{wtotal}, charaters : #{ctotal}, total"
end