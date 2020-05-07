class Change
  attr_accessor(:coins)
  attr_reader(:value)
  def initialize(value)
    @value = value.to_f
    @coins = { 
    "quarters" => 0, 
    "dimes" => 0, 
    "nickels" => 0,
    "pennies" => 0
    }
  end

    def coin_combos
      cents = @value * 100
      
      while (cents > 0)
        if (cents / 25) >= 1
          cents -= 25
          @coins["quarters"] += 1
        elsif (cents / 10) >= 1
          cents -= 10
          @coins["dimes"] +=1
        elsif (cents / 5) >= 1
          cents -= 5
          @coins["nickels"] += 1
        else
          cents -= 1
          @coins["pennies"] += 1
        end
      end
      return_string = String.new()
      if @coins["quarters"] != 0
        return_string.concat("Quarters : #{@coins['quarters']} ,")
      end
      if @coins["dimes"] != 0
        return_string.concat("Dimes : #{@coins['dimes']} ,")
      end
      if @coins["nickels"] != 0
        return_string.concat("Nickels : #{@coins['nickels']} ,")
      end
      if @coins["pennies"] != 0
        return_string.concat("Pennies : #{@coins['pennies']} .")
      end
      return_string
    end
  end