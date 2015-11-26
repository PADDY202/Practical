class Curler
  attr_reader :name,:proficiency, :proficiency_requirements
  def initialize( name, proficiency, proficiency_requirements)
    @name = name
    @proficiency = proficiency
    @proficiency_requirements =proficiency_requirements
  end


end