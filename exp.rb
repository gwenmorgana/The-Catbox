

# This creates a 'player' and holds the base stats before other calculations
def player_info(*vals)
  # player_name, player_class, player_race, player_deity, player_level = args
  val1, val2, val3, val4, val5 = args

  puts "arg1: #{val1}, arg2: #{val2}, arg3: #{val3}, arg4: #{val4}, arg5: #{val5}"
end

#def player_stats(base_str, base_sta, base_agi, base_dex, base_wis, base_int, base_cha, base_pr, base_mr, base_dr, base_fr, base_cr)
#end

puts "Press Enter to display the character sheet: "
$stdin.gets
# what am I doing wrong here? Ohh.. I think i need to not call an individual variable in the function..?!
#puts "#{player_name}\n#{player_level}\s#{player_class}\n#{player_deity}\n\n"

# Let's try this again...
#print "#{player_name}\n#{player_level}\s#{player_class}\n#{player_deity}\n\n"
#puts "STR #{base_str}\nSTA #{base_sta}\nAGI #{base_agi}\nDEX #{base_dex}\nWIS #{base_wis}\nINT #{base_int}\nCHA #{base_cha}\nPOISON #{base_pr}\nMAGIC #{base_mr}\nDISEASE #{base_dr}\nFIRE #{base_fr}\nCOLD #{base_cold}"


player_info("Ratbox","Warrior","Vah Shir","Agnostic","1")
player_stats(100,85,95,70,70,65,65,15,25,15,25,25)
bonus_stat = (base_sta + 25)
base_sta = bonus_stat
