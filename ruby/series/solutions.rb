require 'pry'

class Series

    def initialize(str)
      @nums = str.split('')
    end
  
    def slices(n)
      raise ArgumentError, 'Argument is out of range' unless n <= @nums.length
      (0..@nums.length - n).map { |index| @nums[index..index+n - 1].join }
    end
end

puts Series.new("4567382048").slices(3)
 