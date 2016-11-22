class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = place_stones
  end

  def place_stones
    cups = Array.new(14) { [:stone] * 4 }
    cups[6] = []
    cups[13] = []
    cups
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Empty starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    num_stones = @cups[start_pos].length
    @cups[start_pos] = []
    final_idx = nil
    current = start_pos
    num_stones.times do
      current += 1

      if current_player_name == @name1
        current += 1 if current == 13
      elsif current_player_name == @name2
        current += 1 if current == 6
      end
      current -= 14 if current > 13
      final_idx = current
      @cups[current] << :stone
    end
    render

    next_turn(final_idx)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0...6].all?(&:empty?) || @cups[6..-1].all?(&:empty?)
  end

  def winner
    player1_count = @cups[6].count
    player2_count = @cups[13].count

    case player1_count <=> player2_count
    when 1  then @name1
    when 0  then :draw
    when -1 then @name2
    end
  end
end
