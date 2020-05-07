require('rspec')
require('pry')
require('combo.rb')

describe ('#combo') do
  it('will output value of quarters') do
  change = Change.new(1.00)
  expect(change.coin_combos()).to(eq("Quarters : 4, "))
  end

  it('will output value of dimes') do
   dimes = Change.new(0.20)
   expect(dimes.coin_combos()).to(eq("Dimes : 2, "))
  end
  it('will output value of nickels') do
    nickels = Change.new(0.05)
    expect(nickels.coin_combos()).to(eq("Nickels : 1, "))
  end
  it('will output value for all coins in a random amount of change') do
    change = Change.new(0.94)
    expect(change.coin_combos()).to(eq("Quarters : 3, Dimes : 1, Nickels : 1, Pennies : 4. "))
  end
end