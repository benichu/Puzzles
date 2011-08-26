
module Puzzles

  # A bunch of basic programming puzzle which doesn't have any context.
  module Basic

    # Returns the sum of the squares of the two biggest argument
    # given. When there's only 1 argument, returns only a square of
    # it. Returns zero if there's no argument.
    #
    # Example:
    #     biggest_sum_of_square 1, 2, 3, 4     # returns 25
    #     biggest_sum_of_square 5              # returns 25
    #     biggest_sum_of_square                # returns 0
    #
    # @param *number [Array] An array of numbers.
    # @return [Integer] See above.
    def biggest_sum_of_square(*numbers)
      if numbers.is_a?(Array)
        if numbers.length > 1
          numbers.sort.last(2).collect {|i| i * i}.inject{|sum,x| sum + x }
        elsif numbers.length == 1
          numbers.first * numbers.first
        else
          0
        end
      else
        0
      end

    end

  end

end
