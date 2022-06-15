require './decorator'

class Capitalized < Decorator
  def correct_name
    @component.correct_name.capitalize
  end
end