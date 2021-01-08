class BankAccount
    def initialize(balance, interest_rate)
        @balance = balance
        @interest_rate = interest_rate
    end
    
    attr_accessor :balance
    
    def deposit(amount)
        return @balance += amount
    end
    
    def withdraw(amount)
        return @balance -= amount
    end
    
    def gain_interest
        return @balance += ((@balance * @interest_rate) + 1)
    end

end

checking = BankAccount.new(5000, 0.0125)

p checking
p checking.deposit(2500)
p checking.withdraw(1000)
p checking.gain_interest