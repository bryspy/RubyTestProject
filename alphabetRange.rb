letters = ('a'..'z').to_a

puts letters.length
puts letters.count{|l| l == 'a'}

letters.each do |letter|
  puts letter
  p letter
end
