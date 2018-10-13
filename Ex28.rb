puts "Welcome to Boolean practice."

true && true # true
false && false # false
1 == 1 && 2 == 1 # true
"test" == "test" # true
1 == 1 || 2 != 1 # true
true && 1 == 1 # true
false && 0 != 1 # false
true || 1 == 1 # true
"test" == "testing" # false
1 != 0 && 2 == 1 # true
"test" == 1 # false
!(true && false) # true
!(1 == 1 && 0 != 1) # false
!(10 == 1 || 1000 == 1000) # false
!(1 != 10 || 3 == 4) # 
!("testing" == "testing" && "Richard" == "Cool Guy") #
1 == 1 && (!("testing" == 1 || 1 == 0)) #
"chunky" == "bacon" && (!(3 == 4 || 3 == 3)) #
3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun")) #
