require('rspec')
require('pry')
require('leet')

describe('String#leet') do
  it('returns a string when no Leet rules apply') do
    expect('happy'.leet).to(eq('happy'))
  end

  it('converts the letter E into 3') do
    expect('bevy'.leet).to(eq('b3vy'))
  end

end