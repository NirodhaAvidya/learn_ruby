
class Book
  attr_accessor :title

  # def title=(new_book)  # self.note("!\s=\s")
  #   title_words = new_book.split(" ")
  #   result = []
  #   for words in title_words do
  #     lil_words = File.read(File.expand_path(File.dirname(__FILE__) << '/little_words.txt')).split(/\n/)
  #     if lil_words.include?(words)
  #       result << words
  #     else
  #       result << words.capitalize
  #     end
  #   end
  #   result[0].capitalize!
  #   @title = result.join(" ")
  # end

  def title=(new_book)
    lil_words = File.read(File.expand_path(File.join(".","assets","little_words.txt"))).split(/\n/)
    title_words = new_book.split(" ")
    title_words[0].capitalize!
    title_words.collect do |word|
      # next if File.read(File.expand_path(File.join("..","assets","little_words.txt"))).split(/\n/).include? word
      next if lil_words.include? word
      word.capitalize!
    end
    @title = title_words.join(" ")
  end

end

# puts "Hello from book.rb " + File.expand_path(File.dirname(__FILE__))
# puts Book.new.title = 'this is a test'
