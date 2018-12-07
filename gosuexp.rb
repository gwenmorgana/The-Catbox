# Load the gosu library
require 'gosu'
# set Tutorial as within the Gosu master class
class Tutorial < Gosu::Window
  def initialize
    # set window resolution
    super 640, 480
    # Title the produced window
    self.caption = "Tutorial Game"
    # Draws a tiled background in the window form the space.png file
    @background_image = Gosu::Image.new("media/space.png", :tileable => true)
  end

  def update
    # ...
  end

  def draw
    # draw the background image each time, 60 times per second
    @background_image.draw(0, 0, 0)
  end
end

Tutorial.new.show
