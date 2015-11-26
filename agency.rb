class Agency
  def initialize(male_culers, female_curlers)
    @male_culers =male_culers
    @female_curlers =female_curlers
  end

  def state_of_agency
    puts "MALE CURLERS:"
    @male_culers.each { |x| puts "#{x.name}'s proficiency is #{x.proficiency}. Seeks partner with proficiency >= #{x.proficiency_requirements}" }

  end

end