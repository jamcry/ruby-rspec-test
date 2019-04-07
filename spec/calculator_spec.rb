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
       it "multiplies two numbers" do
            calculator = Calculator.new
            expect(calculator.multiply(3, 5)).to eql(15)
       end
       
       it "works with multiplication with 0" do
            calculator = Calculator.new
            expect(calculator.multiply(2, 0)).to eql(0)
       end
    end

end