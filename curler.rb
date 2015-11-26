class Curler
  attr_reader :name,:proficiency, :proficiency_requirements
  def initialize( name, proficiency, proficiency_requirements)
    @name = name
    @proficiency = proficiency.to_i
    @proficiency_requirements =proficiency_requirements.to_i
  end
  def <=> curler
    curler.proficiency <=> proficiency
  end

end