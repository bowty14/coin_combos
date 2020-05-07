require('rspec')
require('pry')
require('combo.rb')

describe ('#combo') do
  it('will find a coin value when the inputted number is 1, 5, 10, or 25') do
  change = Change.new(1.00)
  expect(change.coin_combos()).to(eq(100))
  end

  it('will find a coin calue when the inputted number is 1,5,10,or 25') do
    quarter = Change.new(0.25)
    expect(quarter.conin_combos()).to(eq(['quarter']))
  end
end