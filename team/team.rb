class Team

  attr_reader :team_name
  attr_reader :players
  attr_accessor :coach
  attr_accessor :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach =  coach
    @points = points
  end
  

  def new_player(signing)
    @players << signing
  end


  def our_player(search)
    for guy in @players
      if guy == search
        return true
      end
    end
    return false
  end


  def winner()
    return @points += 3
  end

end