        # # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.
#
#

require "pig_latin"

describe "#translate" do

  it "translates a word beginning with a vowel" do
    s = translate("apple")
    s.should == "appleay"
  end

  it "translates a word beginning with a consonant" do
    s = translate("banana")
    s.should == "ananabay"
  end

  it "translates a word beginning with two consonants" do
    s = translate("cherry")
    s.should == "errychay"
  end

  it "translates two words" do
    s = translate("eat pie")
    s.should == "eatay iepay"
  end

  it "translates a word beginning with three consonants" do
    translate("three").should == "eethray"
  end

  it "counts 'sch' as a single phoneme" do
    s = translate("school")
    s.should == "oolschay"
  end

  it "counts 'qu' as a single phoneme" do
    s = translate("quiet")
    s.should == "ietquay"
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = translate("square")
    s.should == "aresquay"
  end

  it "translates many words" do
    s = translate("the quick brown fox")
    s.should == "ethay ickquay ownbray oxfay"
  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)

  it "Maintains capitalization 'American Pie'" do
    s = translate("American Pie")
    s.should == "Americanay Iepay"
  end

  it "Maintains capitalization 'The rain in Spain'" do
    s = translate("The rain in Spain")
    s.should == "Ethay ainray inay Ainspay"
  end

  it "Maintains capitalization 'Quick like a Squirel'" do
    s = translate("Quick like a Squirel")
    s.should == "Ickquay ikelay aay Irelsquay"
  end

    it "Maintains capitalization 'QUIT SCREAMING AT ME'" do
    s = translate("QUIT SCREAMING AT ME")
    s.should == "ITQUAY EAMINGSCRAY ATAY EMAY"
  end

  # * retain the punctuation from the original phrase
  it "Retain punctuation" do
    s = translate("Me, you, and the Oxford comma.")
    s.should == "Emay, ouyay, anday ethay Oxforday ommacay."
  end
  #This isn't going to work for an apostrophe

end
