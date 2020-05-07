class Change
  attr_accessor(:value)

  def initialize(value)
    @value = value
    @coin_words = []
  end

  def coin_combos
    @coin_words = [0, "quarters",0,"dimes",0,"nickels",0,"pennies"]
    cents = value * 100
  end
end