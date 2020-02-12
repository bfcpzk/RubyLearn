# ensure 相当于 Java 中的 finally 起到程序收尾作用
def copy(from, to)
    src = File.open(from)
    begin
        dst = File.open(to, 'w')
        data = src.read
        dst.write(data)
        dst.close
    rescue => exception
        puts exception.message
    ensure
        src.close
    end
end