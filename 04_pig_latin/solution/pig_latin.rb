module Is_capital
  def capital? # I'll use this later to maintain capitalization.
    self == self.capitalize # I'm surprised this method doesn't exist already
  end

  def yell? # Same reasoning as above
    self == self.upcase
  end
end

class String # This allows to module above to work with strings.
  include Is_capital # I could've written the methods as 'def capital?(str)...' but I like this better.
end

def translate(word)
  words = word.split(" ") # I think an array of individual words will be easier to manipulate
  pig = [] # I can store them here until I'm ready to recompile them into a string

  for word in words do

    cap = "" # For some reason 'cap = word' wouldn't work.  Cap was syncronized with word, which defeated the purpose.
    cap << word # This was a work around
    buffer = "" # This will be a place to do a final check for punctuation

    #determine if word begins with a vowel
    if word[/\A[aeiou]*/i] != ""
      # word = word.downcase              #This was initially done to resolve the use of upcase! below.
      # word.capitalize! if cap.capital?  #But it was unnecessary because leading characters don't move.
      if cap.yell? # Check for ALL CAPS
        buffer << word.upcase + "AY"  # Tried this as upcase! at first, but got nil errors when the word was already upcase.
      else
        buffer << word + "ay"
      end
      unless buffer[/\W/].nil? # Check for punctuation
        pig << buffer.gsub(/\W/,'') + buffer[/\W/]
      else
        pig << buffer
      end

    #determine if word begins with "qu"
    elsif word[/\Aqu/i] == "qu" || word[/\Aqu/i] == "Qu" || word[/\Aqu/i] == "QU" # I could've sworn there was an easirt way to write this.  I wanted to do something like'if x == 1||2||3'. I tried casecmp but nil errors.
      word.slice!(0..1) # I used range to avoid issues with case
      word = word.downcase
      word.capitalize! if cap.capital?
      if cap.yell?
        buffer << word.upcase + "QUAY"
      else
        buffer << word + "quay"
      end
      unless buffer[/\W/].nil?
        pig << buffer.gsub(/\W/,'') + buffer[/\W/]
      else
        pig << buffer
      end

    #determine if word begins with a phoneme containing "qu"
    elsif word[/\A.qu/i].nil? == false
      phoneme = word[/\A.qu/i]
      word.slice!(phoneme)
      word = word.downcase
      word.capitalize! if cap.capital?
      if cap.yell?
        buffer << word.upcase + phoneme.upcase + "AY"
      else
        buffer << word + phoneme.downcase + "ay"
      end
      unless buffer[/\W/].nil?
        pig << buffer.gsub(/\W/,'') + buffer[/\W/]
      else
        pig << buffer
      end

    #determine leading consonants
    else
      consonants = word[/\A[^aeiou]*/i]
      word.slice!(consonants)
      word = word.downcase
      word.capitalize! if cap.capital?
      if cap.yell?
        buffer << word.upcase + consonants.upcase + "AY"
      else
        buffer << word + consonants.downcase + "ay"
      end
      unless buffer[/\W/].nil?
        pig << buffer.gsub(/\W/,'') + buffer[/\W/]
      else
        pig << buffer
      end
    end
  end

  pig.join(" ")
end
