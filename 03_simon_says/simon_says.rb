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

# When I got the part about not capitalizing the "little words", I was a bit thrown.  I immediately knew that the method would have to scan for English articles, conjunctions, and prepositions as well as ignoring the first word of the title.  I know that the exercise doesn't call for creating a library of all English prepositions, etc., but I didn't feel right writing the code to pass just the few required test.

def titleize(title)
  #title.split.map{|word|word.capitalize}.join(" ") ## This worked up until the ignore "little words".

lil_words = File.read(File.expand_path(File.dirname(__FILE__) << '/little_words.txt')).split(/\n/)

  title = title.split
  result = []
  for words in title
    if lil_words.include?(words)
      result << words
    else
      result << words.capitalize!
    end
  end
  result[0].capitalize!
  result.join(" ")
end