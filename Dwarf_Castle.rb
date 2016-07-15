require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, true
    self.caption = "Gosu Tutorial Game"

    @x = 300
    @y = 240
    @background_image = Gosu::Image.new("Castle.jpg", :tileable => true)
  end

  def update
    if Gosu::button_down? Gosu::KbLeft then
      @x += 10
    elsif Gosu::button_down? Gosu::KbRight then
      @x += -10
    end
    if Gosu::button_down? Gosu::KbUp then
      @y += 10
    elsif Gosu::button_down? Gosu::KbDown then
      @y += -10
    end
  end

  def draw
    @background_image.draw(@x, @y, 0)
  end
end

window = GameWindow.new
window.show