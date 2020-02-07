puts "hello world!"
a = 3
b = 2
puts (a + b)

class Apple
    @@from = "China"

    def initilize
        @color
    end

    def color
        return @color
    end

    def color= color
        @color = color
    end

    def set_from from
        @@from = from
    end

    def get_from
        return @@from
    end

    #private 上面的是public，后面的是private
    private
    def i_am_private
    end
end

class Car
    attr_accessor "color"
end

red_apple = Apple.new
red_apple.color = "red"
red_apple.set_from 'Japan'
puts "red_apple.color: #{red_apple.color}"
puts "red_apple.get_from: #{red_apple.get_from}"


green_car = Car.new
green_car.color = "green"
puts "green_car.color: #{green_car.color}"