class Paperboy
    def initialize(name)
        @name = name
        @experience = 0
        @earnings = 0.0
    end

    attr_reader :earnings 

    def quota

        50 + (@experience / 2)
    end

    def deliver(start_address, end_address)
        num_delivered = (end_address - start_address + 1)
        daily_earnings = if num_delivered > quota
            (0.25 * num_delivered) + (0.25 * (num_delivered - quota))
        elsif num_delivered < quota
            (0.25 * num_delivered) - 2.00
        else
            0.25 * num_delivered
        end
        @experience += num_delivered
        @earnings += daily_earnings
        return daily_earnings
    end

    def report
        "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{earnings} so far!"
    end

end

bob = Paperboy.new("Bob")

p bob.quota
p bob.deliver(101, 160)
p bob.earnings
p bob.report
p bob.quota
p bob.deliver(1, 75)
p bob.earnings
p bob.report


# As a stretch exercise you can figure out how to ensure it still works if the above assumption isn't met!
# report
# This method should return a string about the paperboy's performance
# e.g. "I'm Tommy, I've delivered 90 papers and I've earned $38.25 so far!"
# Here's some sample code, using your Paperboy class:

# tommy = Paperboy.new("Tommy")

# tommy.quota # => 50
# tommy.deliver(101, 160) # => 17.5
# tommy.earnings #=> 17.5
# tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

# tommy.quota # => 80
# tommy.deliver(1, 75) # => 16.75
# tommy.earnings #=> 34.25
# tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
