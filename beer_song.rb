beers = ARGV[0]

if beers.nil?
  print "No Command line arguments supplied"
  exit
end

beers.to_i.downto(1){|beer|
  puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer!"
  if beer != 0
    puts "Take one down, pass it around, #{beer - 1} bottles of beer on the wall!"
  end
}
