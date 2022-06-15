class Corrector
  def correct_name(name)
    corrector_name = name.capitalize
    corrector_name = corrector_name[0..9] if corrector_name.length > 10
    corrector_name
  end
end