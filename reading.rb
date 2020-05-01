filename = ARGV.first

puts "lets read that new file"
target = File.open(filename).read
puts "#{target}"