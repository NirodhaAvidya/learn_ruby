class Book
  attr_accessor :title

  def title=(new_book)
    lil_words = File.read(File.expand_path(File.join(".","assets","little_words.txt"))).split(/\n/)
    title_words = new_book.split(" ")
    title_words[0].capitalize!
    title_words.collect do |word|
      next if lil_words.include? word
      word.capitalize!
    end
    @title = title_words.join(" ")
  end

end
