# 在 rescue 中添加 retry 可以让 begin 块重新执行
# 程序每隔 10 秒执行一次 File.open

file = ARGV[0]
begin
    fd = File.open(file)
    puts fd.read
rescue => exception
    sleep 10
    retry
end