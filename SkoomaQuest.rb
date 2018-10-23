# Welcome to SkoomaQuest. A Game by Richard Grady.

# include CombatEngine.rb

def main_menu
  puts "Intro Text"
  puts "1.) New Game."
  puts "2.) Quit."
  choice = $stdin.gets.chomp
  if choice == "1"
