require 'test/unit'
require_relative 'agency'
require_relative 'curler'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @curlerm = [Curler.new("tom", 9, 4)]
    @curlerf = [Curler.new("Olivia", 7, 6)]

    @agent = Agency.new(@curlerm, @curlerf)

    # Do nothing
  end

  def testagent
    @agent.state_of_agency
  end


end