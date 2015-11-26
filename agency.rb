class Agency
  def initialize(male_culers, female_curlers)
    @male_curlers =male_culers
    @female_curlers =female_curlers
  end

  def state_of_agency
    puts "MALE CURLERS:"
    @male_curlers.each { |x| puts "#{x.name}'s proficiency is #{x.proficiency}. Seeks partner with proficiency >= #{x.proficiency_requirements}" }
    puts "FEMALE CURLERS:"
    @female_curlers.each { |x| puts "#{x.name}'s proficiency is #{x.proficiency}. Seeks partner with proficiency >= #{x.proficiency_requirements}" }
  end

  def create_teams
    self.sort_teams
    @male_curlers.each_with_index {|x, index| puts"(#{@female_curlers[index].name}, #{x.name}) Satisfaction: #{self.satisfaction(x,@female_curlers[index])}"  }
  end

  def sort_teams
    @male_curlers.sort!
    @male_curlers.sort!
  end
  def satisfaction (male, female)
    if male.proficiency > female.proficiency
      score =   female.proficiency - male.proficiency
    end
    if male.proficiency < female.proficiency
      score =   male.proficiency - female.proficiency
    end
    if male.proficiency == female.proficiency
      score =  0
    end
    return score
  end

end