class Simon
  COLORS = %w(red blue green yellow).freeze

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    puts game_over_message
    reset_game
  end

  def take_turn
    system('clear')
    show_sequence
    require_sequence
    unless game_over
      puts round_success_message
      sleep(0.75)
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    seq.each do |color|
      puts color
      sleep(0.75)
      system('clear')
      sleep(0.5)
    end
  end

  def require_sequence
    system('clear')
    puts "Please input the colors by their first letter."
    puts "One line at a time."

    @seq.each do |color|
      user_input = STDIN.gets.chomp
      unless color[0] == user_input
        @game_over = true
        break
      end
    end

  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    "Round Successful. Here comes the next round:"
  end

  def game_over_message
    "Game over! You made it through #{@sequence_length} round!"
  end

  def reset_game
    @seq = []
    @game_over = false
    @sequence_length = 1
  end
end
