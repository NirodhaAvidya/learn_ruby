Learn Ruby Test-First

Setup

Install Ruby

You will need Ruby, RubyGems and RSpec to Learn Ruby.
We recommend using rvm but you can use any Ruby you want. We officially support Ruby 1.9 but probably work with 1.8.7 as well.
Here are some good instructions for installing the required software.
Here are some other good instructions, using rvm.
Open a terminal window. (On Mac OS X you can use the Terminal app.)

Install RSpec

  gem install rspec
Enter the course directory. (That's the same directory that this index.html file is in.)

  cd learn_ruby
Enter the 00_hello lab.

  cd 00_hello
Open the lab's index.html file in a web browser and follow the instructions there.

  open index.html  # this works on Mac OS X only!
Using These Exercises

Your course directory has a list of lab directories. Each directory has a spec file. You will write all the code to make all the specs in it pass.

To get your feet wet in this process, go into the "hello" lab with cd 00_hello and read the detailed instructions in its index.html file.

If you got through "hello", then congratulations! Now it's time to go to the next directory (whose name begins with 01_) and start learning Ruby!

Course Outline

Each course is different, so check with your instructor for details on the curriculum he or she has chosen. Here is a survey of a few of the labs:

hello Gives you a feel for how to use these tests. See 00_hello/index.html for detailed instructions.
temperature Write and class and do some basic math.
calculator introduces a little more math, and you'll need to iterate.
pig_latin lets you manipulate strings.
in_words asks a number to say itself in English. Extend a built-in class. By the end you'll use conditionals, arrays, iteration, and maybe even some recursion.
blocks introduces block syntax, including yield
Advanced Setup

After you're in the swing of things, you can read about advanced setup techniques like pulling changes and forking. But don't worry about it at first.

Problems? Questions?

First, ask your neighbor. Then, ask your instructor.

Then ask Google (seriously!). If there's an error, try copying the error string and pasting it into a Google search box. If that doesn't help, do a search on one of these sites:

http://stackoverflow.com/
http://www.ruby-forum.com
You can also find help at the TestFirst.org site or the Test-First Teaching mailing list.

And many related lectures, notes and videos are at http://CodeLikeThis.com.

Remember, if you post a technical question online, you should

Include version numbers:

 $ ruby -v
 ruby 1.8.6 (2008-08-11 patchlevel 287) [universal-darwin9.0]
Note where you have already looked for an answer

If you can, include code snippets that reproduce the problem in isolation
Solutions and Submissions

This Github repo (learn_ruby) is generated from a different Github repo, http://github.com/ultrasaurus/test-first-teaching.

If you want to see how other students solved the problem, go to that repo and click around. (I'm not providing a direct link because I don't want it to be too easy to cheat!)

If you want to submit a patch or a solution, please fork the Test-First Teaching repo and submit a Pull Request from there.

Also,

Resources

Here is a broad survey of many resources you may find useful. Don't try to read them all! Just browse around when you feel like learning more about Ruby.

Learning Ruby via Tests (and/or Interactively)

Ruby Koans by Jim Weirich and Joe O'Brien (inspired by Metakoans by ara.t.howard and Ruby Learning Tests by Mike Clark)
Test-First Teaching by Sarah Allen and Alex Chaffee
Learning TDD Through Test First Teaching talk by Sarah Allen at East Bay Ruby Meetup
Growing OO Software In Ruby by Brian Marick - a Ruby version of Growing Object-Oriented Software Guided by Tests
ruby-warrior by Ryan Bates - a game written in Ruby for learning Ruby
Ruby Kickstart by Josh Cheek - another set of test-driven exercises
Try Ruby runs a Ruby interpreter in your browser, with hints and advice
Learning Ruby and Programming

Learn To Program by Chris Pine - great Ruby tutorial, available online (1st ed.) or in a PragProg book (2nd ed.)
Ruby Learning - Ruby tutorial
Rails for Zombies - learn Ruby and Rails in your browser, no setup required
Learn Ruby The Hard Way - a Ruby translation of Zed Shaw's "Learn Python The Hard Way"
Read Ruby a book about Ruby, quite technical but well written. Free online.
Ruby Mission
RailsBridge
CS Unplugged - "CS Unplugged provides an extensive collection of free resources that teach principles of Computer Science such as binary numbers, algorithms and data compression through engaging games and puzzles that use cards, string, crayons and lots of running around."
Everyday Scripting with Ruby by Brian Marick
Programming Ruby (the Pick Axe) by Dave Thomas
Nice User's Guide: http://www.rubyist.net/~slagell/ruby/
Michael Hartl's Rails Tutorial
http://ruby4kids.com
Ruby in 100 Minutes by Jeff Casimir
Ruby Mendicant University
Trainer on Rails "Ruby For Rails" tutorial
"My 10 Favorite Things About Ruby" by Yehuda Katz
"How To Count" by Steven Frank, vol. 1 in "Programming for Mere Mortals", a series of books designed to introduce the concepts of programming from the ground up to a reader who has never written a line of code.
Test-Driven Development

Test-Driven - presentation by Alex
Online Ruby References

http://www.ruby-lang.org
http://www.ruby-doc.org/
http://www.gotapi.com/rubyrails
http://apidock.com/
Other good resources

irb - when in doubt, try it out!
Ruby Version Manager (aka rvm) - cleanly manages multiple Ruby installations
http://www.rubular.com/ - an online Ruby regular expression calculator
Git tutorial by Scott Chacon
Credits

Concept by Alex Chaffee
Exercises by Alex Chaffee, Sarah Allen, Liah Hansen, Kai Middleton
Early quality assurance by Sumiki, Dimitri, Liah, Michael, and Brendan