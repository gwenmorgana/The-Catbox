# experimental input - execute via ruby ex13.rb 60 Necromancer
# p_level, p_class = ARGV
# ----------------------------------------- Disregard all above
# This creates a 'player' and holds the base stats before other calculations
def player_info(player_name, player_class, player_race, player_deity, player_level)
  player_info("Ratbox", "Warrior", "Vah Shir", "Agnostic", 1)
end

def player(base_str, base_sta, base_agi, base_dex, base_wis, base_int, base_cha, base_pr, base_mr, base_dr, base_fr, base_cr)
  player(100, 85, 95, 70, 70, 65, 65, 15, 25, 15, 25, 25)
  bonus_stat = (base_sta + 25)
  base_sta = bonus_stat
end

puts "Press Enter to display the character sheet: "
$stdin.gets
# what am I doing wrong here? Ohh.. I think i need to not call an individual variable in the function..?!
# puts "#{player_name}\n#{player_level}\s#{player_class}\n#{player_deity}\n\n"
# Let's try this again...
puts "#{player_info1}\n#{player_level}\s#{player_class}\n#{player_deity}\n\n"
puts "STR #{base_str}\nSTA #{base_sta}\nAGI #{base_agi}\nDEX #{base_dex}\nWIS #{base_wis}\nINT #{base_int}\nCHA #{base_cha}\nPOISON #{base_pr}\nMAGIC #{base_mr}\nDISEASE #{base_dr}\nFIRE #{base_fr}\nCOLD #{base_cold}"



# disregard all below
#puts "What is your name, Adventurer?"
# p_name = $stdin.gets.chomp
# puts "What level are you? "
# p_level = gets.chomp
# puts "What is your class? "
# p_class = gets.chomp
# p_leveli = p_level.to_i # Converts command line argument 1 into an integer.
# player base stats. p_ variables represent the player
# p_str = 50
# p_int = 75
# p_agi = 25
# p_dex = 25
# p_sta = 60
# Base calculations of health and mana from the character's starting stats.
# p_base_health = p_sta * p_leveli / 2 # This converts HPS
# p_base_mana = p_int * p_leveli / 2 # This converts Mana
# Adding player base skills
# p_one_hand_blunt = 0






# print %{
# Welcome to Fangorn Forest, #{p_name}.\n\n
# You are level #{p_leveli}.\nYou have #{p_base_health} life points and #{p_base_mana} mana energy points.
# If you ever expect to leave this forest you better slay these bixies..."

# }
