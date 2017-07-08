module Luhn
  def self.is_valid?(number)
    #break credit card into individual digits
    #double every other digit
    transform_nums = []
    digits = number.to_s.split('').map(&:to_i) 
    digits.reverse.each_with_index do |n, index|
      if index % 2 == 0
        double_val = n * 2
        transform_nums.push(double_val) 
      else
        transform_nums.push(n)
      end
    end
    
    #value greater than 10, subtract 9
    transform_nums.map do |i|
      if i >= 10
        i - 9
      end
    end

    #add up all the digits
    sum = transform_nums.inject(:+)
    #if sum is divisible by 10 it's valid, otherwise invalid
    return sum % 10 == 0
  end
end
