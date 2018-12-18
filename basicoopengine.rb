class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)

  end
end

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end
    # be sure to print out the last scene
    current_scene.enter()
  end
end

class Death < Scene

  @@quips = [
    "Death 1.",
    "Death 2.",
    "Death 3.",
    "Death 4."

  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length -1))]
    exit(1)
  end
end

class CentralCorridor < Scene

  def enter()
    puts "Central Corridor entered."
    puts "Choose option 1 or 2"
    print "> "

    action = $stdin.gets.chomp

    if action == "1"
      puts "Action 1 chosen."
      return 'death'
    elsif action == "2"
      puts "Action 2 chosen."
      return 'laser_weapon_armory'
    else
      puts "Does not compute!"
      return 'central_corridor'
    end
  end
end

class LaserWeaponArmory < Scene

  def enter()

  puts "Laser Weapon Armory entered."
  code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
  print "[Keypad]> "
  guess = $stdin.gets.chomp
  guesses = 0

  while guess != code && guesses < 10
    puts "Code incorrect."
    guesses += 1
    print "[Keypad]> "
    guess = $stdin.gets.chomp
  end

  if guess == code
    puts "Code accepted. You may proceed."
    return 'the_bridge'
  else
    puts "You have exceeded your welcome."
    return 'death'
  end
end


class TheBridge < Scene
  def enter()
    puts "You have entered the Bridge."
    puts "Choose 1 or 2."
    print "> "

    action = $stdin.gets.chomp

    if action == "1"
      puts "You have failed."
      return 'death'
    elsif action == "2"
      puts "You have suceeded"
      return 'escape_pod'
    else
      puts "Type the correct bloody option man!"
      return 'the_bridge'
    end


  end
end

class EscapePod < Scene

  def enter()
    puts "You have entered the Escape Pod."
    puts "Choose 1 thru 5."

    good_pod = rand(1..5)
    print "Comm Panel:> "
    guess = $stdin.gets.chomp

    if guess != good_pod
      puts "You have chosen poorly..."
      return 'death'
    else
      puts "You have chosen wisely..."
      return 'finished'
    end

  end
end

class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new(),
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

class Finished < Scene
  def enter()
    puts "Mission successful. Have a beer!"
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
end
