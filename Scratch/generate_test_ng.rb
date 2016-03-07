

File.open('class.txt').each do |line|
  puts "<class name = \"scripts.ApprovedScripts.#{line.strip}\"/>"
end
