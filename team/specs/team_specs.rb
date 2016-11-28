require('minitest/autorun')
require_relative('../team')

class TeamSpec < MiniTest::Test

  def test_can_create_team()
    team = Team.new("Celtic", ["Tom", "Dick", "Harry"], "Ted", 0)

    assert_equal("Celtic", team.team_name)
  end

  def test_can_get_team_name()
    team = Team.new("Celtic", ["Tom", "Dick", "Harry"], "Ted", 0)

    assert_equal(["Tom", "Dick", "Harry"], team.players)
  end

  def test_can_get_players()
    team = Team.new("Celtic", ["Tom", "Dick", "Harry"], "Ted", 0)

    assert_equal("Ted", team.coach)
  end

  def test_can_get_coach()
    team = Team.new("Celtic", ["Tom", "Dick", "Harry"], "Ted", 0)
  end

  def test_update_coach()
    team = Team.new("Celtic", ["Tom", "Dick", "Harry"], "Ted", 0)

    team.coach = "Fred"
 
    assert_equal("Fred", team.coach)
  end

  def test_sign_player()
    team = Team.new("Celtic", ["Tom", "Dick", "Harry"], "Ted", 0)

    team.new_player("Messi")

    assert_equal(["Tom", "Dick", "Harry", "Messi"],team.players)
  end

  def test_our_player_found()
    team = Team.new("Celtic", ["Tom", "Dick", "Harry"], "Ted", 0)

    assert_equal(true,team.our_player("Dick"))

  end

  def test_our_player_not_found()
    team = Team.new("Celtic", ["Tom", "Dick", "Harry"], "Ted", 0)

    assert_equal(false,team.our_player("Reg"))

  end

  def test_team_has_won()
    team = Team.new("Celtic", ["Tom", "Dick", "Harry"], "Ted", 0)

    team.winner()
    assert_equal( 3 ,team.points)
  end

end
