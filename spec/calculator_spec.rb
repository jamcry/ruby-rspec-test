#spec/calculator_spec.rb
require './lib/calculator'

RSpec.describe Calculator do
    describe "#add" do
        it "returns the sum of two numbers" do
            calculator = Calculator.new
            expect(calculator.add(5, 2)).to eql(7)
        end

        it "returns the sum of more than two numbers" do
            calculator = Calculator.new
            expect(calculator.add(2, 5, 7)).to eql(14)
        end
    end

    describe "#multiply" do
       it "returns the multiplication of two numbers" do
            calculator = Calculator.new
            expect(calculator.multiply(3, 5)).to eql(15)
       end
       
       it "works if one of the multipliers is zero" do
            calculator = Calculator.new
            expect(calculator.multiply(2, 0)).to eql(0)
       end
    end

    describe "#subtract" do
        it "returns the difference of two numbers" do
            calculator = Calculator.new
            expect(calculator.subtract(5, 2)).to eql(3)
        end
        
        it "returns the subtraction of multiple numbers" do
            calculator = Calculator.new
            expect(calculator.subtract(2, 3, 4)).to eql(-5)
        end
    end

    describe "#divide" do
        it "returns the division of two numbers" do
            calculator = Calculator.new
            expect(calculator.divide(4, 2)).to eql(2)
        end

        it "returns the division of multiple numbers in order" do
            calculator = Calculator.new
            expect(calculator.divide(8,2,4)).to eql(1)
        end
    end
end