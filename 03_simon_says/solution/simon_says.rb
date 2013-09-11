def echo(str)
  str
end

def shout(yell)
  yell.upcase
end

def repeat(ditto,x=2)
  ditto << " #{ditto}" * (x-1)
end

def start_of_word(letter,x=1)
  letter[0...x]
end

# Just for fun. What if you wanted the first x words?
def first_word(word,x=1)
  word.split[0...x].join(" ")
end

# When I got the part about not capitalizing the "little words", I was a bit thrown.
# I immediately knew that the method would have to scan for English articles, conjunctions,
# and prepositions as well as ignoring the first word of the title.  I know that the exercise
# doesn't call for creating a library of all English prepositions, etc., but I didn't feel right
# writing the code to pass just the few required test.

def titleize(new_book)
  lil_words = File.read(File.expand_path(File.join(".","assets","little_words.txt"))).split(/\n/)
  title_words = new_book.split(" ")
  title_words[0].capitalize!
  title_words.collect do |word|
    next if lil_words.include? word
    word.capitalize!
  end
  title_words.join(" ")
end
