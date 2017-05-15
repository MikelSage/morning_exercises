def difference_of_squares(max)
  sum_of_squares = 0

  (1..max).each {|num| sum_of_squares += num**2} 

  sum = 0

  (1..max).each {|num| sum += num}

  square_of_sums = sum**2
  square_of_sums - sum_of_squares
end

puts "Enter your max range: "
input = gets.chomp.to_i

puts difference_of_squares(input)

# (1..10).each do |k|
#    puts "#{k}. This is Ruby preferred way of doing loops, when possible"
# end
