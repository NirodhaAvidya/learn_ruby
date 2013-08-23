# lil_words = []
# file_name = File.expand_path(File.dirname(__FILE__) << '/little_words.txt')
#   #File.read("little_words.txt").each_line do |line|

# file_name.readlines.each_line do |line|
#   lil_words << line.chop
# end

#lil_words = File.read('/home/nirodha/code_monkey/learn_ruby/03_simon_says/little_words.txt').split(/\n/)
lil_words = File.read(File.expand_path(File.dirname(__FILE__) << '/little_words.txt')).split(/\n/)

print lil_words
