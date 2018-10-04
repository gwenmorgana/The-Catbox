# As part of lesson 23, I have been researching code on github. This code looks like it makes the program move thru functions
# I will customize the code for understanding to learn def with if elsif else and exit

def main_menu
  puts "This is the Main Menu"
  puts "Choices: Quit, 1"
  menu_choice = $stdin.gets.chomp

  if menu_choice.include?("1") || menu_choice.include?("one") || menu_choice.include?("One")
    menu_1
  elsif menu_choice.include?("quit") || menu_choice.include?("Quit")
    puts "Exiting Program."
    exit(0)
  else
    puts "This is not a valid selection."
    main_menu
  end
end

def menu_1
  puts "This is Menu \#1"
  puts "Please select an option below."
main_menu
end

main_menu
