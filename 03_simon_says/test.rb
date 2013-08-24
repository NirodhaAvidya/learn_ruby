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


puts titleize("jaws")#.should == "Jaws"
puts titleize("david copperfield")#.should == "David Copperfield"
puts titleize("war and peace")#.should == "War and Peace"
puts titleize("the bridge over the river kwai")#.should == "The Bridge over the River Kwai"
