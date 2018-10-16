# This program is made to nest decisions... but how deep does the nest go?
# This form of nesting seems prone to errors that can break the flow

#def caveone
  # This is my command prompt from within the program...
  prompt =  "CaveQuest:> "
puts "You have entered the ancient cave. The path splits ahead to the left of right. Which way will you go?"
print prompt
cave1 = $stdin.gets.chomp
if cave1 == "Left" || cave1 == "left"
  puts "You creep forward into the left path..."
  puts "As you crawl into the narrow path, you feel a strange chill. Ahead of you is a ghost?!"
  puts "Type 1 to gently poke the ghost, Type 2 to \"Boo\" at the ghost."

  print prompt
  ghostchoice = $stdin.gets.chomp
  if ghostchoice = "1" || if ghostchoice = "One" || if ghostchoice = "one"
    puts "The ghost slowly turns around and drinks your soul..."
    puts "You have died."
  elsif ghostchoice = "2" || if ghostchoice = "Two" || if ghostchoice = "two"
    puts "Ahh! You scared me! Haha...OMG"
    puts "Let me introduce you to my friends... Choose a hand, brave adventurer."
    puts "The ghost extends his two closed fists. Do you choose Left of right?"
    ghosthand = $stdin.gets.chomp
    print prompt



elsif cave1 == "Right" || cave1 == "right"
  puts "You clear the cobwebs and venture into the right section of the cave."
else
  puts "This is not a valid selection... try again!"
#caveone
end
#end
#caveone
