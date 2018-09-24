puts "What is your name, Adventurer?"
p_name = gets.chomp
puts "What level are you? "
p_level = gets.chomp
puts "What is your class? "
p_class = gets.chomp
p_leveli = p_level.to_i
# player base stats. p_ variables represent the player
p_str = 50
p_int = 75
p_agi = 25
p_dex = 25
p_sta = 60
p_base_health = p_sta * p_leveli / 2
p_base_mana = p_int * p_leveli / 2



print %{
Welcome to Fangorn Forest, #{p_name}.\n\n
You are level #{p_leveli}.\nYou have #{p_base_health} life points and #{p_base_mana} mana energy points.
If you ever expect to leave this forest you better slay these bixies..."

}
