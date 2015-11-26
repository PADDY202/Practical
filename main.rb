require_relative'agency'
require_relative'curler'

class Main
  male_curlers = []
  female_curlers = []
  i = 0
  IO.foreach('men_curlers.txt') do |line|
    male_curlers[i] = line.split# convert strings to integers
    i = i + 1
  end
  i = 0
  IO.foreach('women_curlers.txt') do |line|
    female_curlers[i] = line.split# convert strings to integers
    i = i + 1
  end
  male_curlers.each_with_index {|x, index| male_curlers[index]=Curler.new(x[0], x[1], x[2]) }
  female_curlers.each_with_index {|x, index| female_curlers[index]=Curler.new(x[0], x[1], x[2]) }


  agency = Agency.new(male_curlers, female_curlers)
  agency.state_of_agency
  puts""
  agency.create_teams

  #puts agency.each_curler.name

#  puts agency.overall_fitness(  agency.create_teams)

end