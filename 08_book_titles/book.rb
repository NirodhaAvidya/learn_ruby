class Book
  attr_accessor :title

  def title=(new_book)  # self.note("!\s=\s")
    title_words = new_book.split(" ")
    result = []

    for words in title_words do
      lil_words = File.read(File.expand_path(File.dirname(__FILE__) << '/little_words.txt')).split(/\n/)
      if lil_words.include?(words)
        result << words
      else
        result << words.capitalize
      end
    end
    result[0].capitalize!
    @title = result.join(" ")
  end
end
