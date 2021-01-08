class Cat
    def initialize(name, preferred_food, meal_time)
        @name = name
        @preferred_food = preferred_food
        @meal_time = meal_time
    end

    attr_accessor :meal_time

    def eats_at
        if @meal_time < 12
            return "#{@meal_time} AM"
        elsif @meal_time == 12
            return "#{@meal_time} PM"
        else
            return "#{@meal_time - 12} PM"
        end
    end

    def meow
        return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
    end
end

p sam = Cat.new("Sam", "chicken", 16)

p bella = Cat.new("Bella", "liver", 6)

p sam.eats_at

p bella.eats_at

p sam.meow
p bella.meow