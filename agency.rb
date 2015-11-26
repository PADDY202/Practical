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
    teams = []
    @male_curlers.each_with_index {|x, index| teams[index]=[@female_curlers[index], x]
    puts"(#{@female_curlers[index].name}, #{x.name}) Satisfaction: #{self.satisfaction(x,@female_curlers[index])}"  }
    teams
  end

  def sort_teams
    @male_curlers = @male_curlers.sort.reverse
    @female_curlers = @female_curlers.sort.reverse

  end




  def overall_fitness( teams )
    score = 0
    teams.each { |x| score = score + self.satisfaction(x[0], x[1])}
     score
  end
#attempt
  def first_ascent_hill_climb
  teams = self.create_teams
  temp_teams = teams
  teams.each_with_index{|x, index| teams.each_with_index{|y, move_index|  temp_teams[index][0] = temp_teams[index][0]  }   }
  end

  def satisfaction (male, female)
    comparefemale = male.proficiency <=>(female.proficiency_requirements)
    comparemale = female.proficiency <=>(male.proficiency_requirements)

    if  comparefemale == -1
      score =   (male.proficiency - female.proficiency_requirements) / 2.to_f

      elsif comparemale == -1
      score = (female.proficiency - male.proficiency_requirements)/2.to_f

    else
      score = 0
    end

    return score

  end
# needs to be changed so that it does not exist the method after return
  def each_curler
    @male_curlers.each { |x| return x }
    @female_curlers.each { |x| return x }

  end


end