class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    system("clear")
    self.show_sequence
    sleep(3)
    self.require_sequence
    system("clear")
    if !@game_over
      self.round_success_message
      sleep(1)
      system("clear")
      @sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
    puts @seq
  end

  def require_sequence
    match = @seq.dup
    # system("clear")
    until match.empty? || @game_over
      system("clear")
      match_ele = match.shift
      guess = gets.chomp
      @game_over = true if match_ele != guess
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Success!"
  end

  def game_over_message
    puts "Aww, game over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
