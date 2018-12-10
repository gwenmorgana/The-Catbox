# Load the gosu library
require 'gosu'
require "./ZOrder.rb"
# set Tutorial as within the Gosu master class
class Tutorial < Gosu::Window
  def initialize
    # set window resolution
    super 640, 480
    # Title the produced window
    self.caption = "Get blazed with the Feline!"
    # Draws a tiled background in the window form the space.png file
    @background_image = Gosu::Image.new("media/space.png", :tileable => true)
    @player = Player.new
    @player.warp(320, 240)
# I left off here
    @star_anim = Gosu::Image.load_tiles("media/star.png", 25, 25)
    @stars = Array.new
# end last position
  end

  def update
    if Gosu.button_down? Gosu::KB_LEFT or Gosu::button_down? Gosu::GP_LEFT
      @player.turn_left
    end
    if Gosu.button_down? Gosu::KB_RIGHT or Gosu::button_down? Gosu::GP_RIGHT
      @player.turn_right
    end
    if Gosu.button_down? Gosu::KB_UP or Gosu::button_down? Gosu::GP_BUTTON_0
      @player.accelerate
    end
    @player.move
    @player.collect_stars(@stars)

    if rand(100) < 4 and @stars.size < 25
      @stars.push(Star.new(@star_anim))
    end
  end

  def draw
    @background_image.draw(0, 0, ZOrder::BACKGROUND)
    @player.draw
    @stars.each { |star| star.draw }
  end
  end

  def draw
    # draw the background image each time, 60 times per second
    @player.draw
    @background_image.draw(0, 0, 0)
  end

  def button_down(id)
    if id == Gosu::KB_ESCAPE
      close
    else
      super
    end
  end

end
#------------ Add animation
class Star
  attr_reader :x, :y

  def initialize(animation)
    @animation = animation
    @color = Gosu::Color::BLACK.dup
    @color.red = rand(256 - 40) + 40
    @color.green = rand(256 - 40) + 40
    @color.blue = rand(256 - 40) + 40
    @x = rand * 640
    @y = rand * 480
  end

  def draw
    img = @animation[Gosu.milliseconds / 100 % @animation.size]
    img.draw(@x - img.width / 2.0, @y - img.height / 2.0,
    ZOrder::STARS, 1, 1, @color, :add)
  end
end


# ----------- End experimental add.
class Player
#  ...
  def score
    @score
  end

  def collect_stars(stars)
    stars.reject! { |star| Gosu.distance(@x, @y, star.x, star.y) < 35 }
  end
end


  def initialize
    @image = Gosu::Image.new("media/meowtranstest.bmp")
    @x = @y = @vel_x = @vel_y = @angle = 0.0
    @score = 0
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def turn_left
    @angle -= 4.5
  end

  def turn_right
    @angle += 4.5
  end

  def accelerate
    @vel_x += Gosu.offset_x(@angle, 0.5)
    @vel_y += Gosu.offset_y(@angle, 0.5)
  end

  def move
    @x += @vel_x
    @y += @vel_y
    @x %= 640
    @y %= 480

    @vel_x *= 0.95 # old value 0.95 on both velocity entries
    @vel_y *= 0.95
  end

  def draw
    @image.draw_rot(@x, @y, 1, @angle)
  end
end


Tutorial.new.show
