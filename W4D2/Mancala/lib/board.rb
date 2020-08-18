class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @side_1 = name1
    @side_2 = name2
    @cups = Array.new(14) {Array.new}
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0...@cups.length).each do |idx|
      4.times { @cups[idx] << :stone} unless idx == 6 or idx == 13
    end
  end

  def valid_move?(start_pos)
    if start_pos >= 0 && start_pos <= 12
      start_pos -= 1 if start_pos <= 6 
      raise "Starting cup is empty" if @cups[start_pos].empty?
      true
    else
      raise "Invalid starting cup"
    end
  end

  # def store_pos(current_player_name)
  #   current_player_name == @side_1 ? 6 : 13
  # end

  def make_move(start_pos, current_player_name)
    # len = @cups[start_pos].length
    current_player_name == @side_1 ? op_store_pos = 13 : op_store_pos = 6
    current_player_name == @side_1 ? store_pos = 6 : store_pos = 13
    # @cups[start_pos] = []
    idx = start_pos
    until @cups[start_pos].empty?
      idx += 1
      @cups[idx % 14] << @cups[start_pos].pop unless idx % 14 == op_store_pos
    end
    self.render
    self.next_turn(idx % 14, store_pos)
  end

  def next_turn(ending_cup_idx, store_pos)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if @cups[ending_cup_idx].length == 1 && ending_cup_idx != store_pos
      return :switch
    elsif ending_cup_idx == store_pos
      return :prompt
    else
      return ending_cup_idx
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
    (0..5).all? { |idx1| @cups[idx1].empty? } || (7..12).all? { |idx2| @cups[idx2].empty?}
  end

  def winner
    if @cups[6] == @cups[13]
      return :draw
    elsif @cups[6].length > @cups[13].length
      return @side_1
    else
      return @side_2
    end
  end
end
