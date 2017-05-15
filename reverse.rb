puts "Enter a word to reverse"

characters = gets.chomp.chars
count = -1
reversed =[]

until count < -characters.length
  reversed << characters[count]
  count -= 1
end

puts reversed.join
