class Player
    def initialize
        @gold_coins = 0
        @health_points = 10
        @lives = 5
    end

    def level_up
        return @lives += 1
    end

    def collect_treasure
        @gold_coins += 1
        if @gold_coins % 10 == 0
            level_up
        end
    end

    def restart
        @gold_coins = 0
        @health_points = 10
        @lives = 5
    end

    def do_battle(damage)
        @health_points -= damage
        if @health_points < 1 && @lives > 0
            @lives -= 1
            @health_points = 10
        elsif @lives < 1
            restart
        end
    end
end

bob = Player.new

p bob
# bob.level_up?
bob.collect_treasure
p bob
bob.collect_treasure
p bob
bob.collect_treasure
p bob
bob.collect_treasure
p bob
bob.collect_treasure
p bob
bob.collect_treasure
p bob
bob.collect_treasure
p bob
bob.collect_treasure
p bob
bob.collect_treasure
p bob
bob.collect_treasure
p bob
bob.collect_treasure
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob
bob.do_battle(3)
p bob