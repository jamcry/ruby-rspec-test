#lib/calculator.rb

class Calculator
    def add(*numbers)
        numbers.reduce(:+)
    end

    def multiply(*numbers)
        numbers.reduce(:*)
    end
end