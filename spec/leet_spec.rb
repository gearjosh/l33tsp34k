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

  it('converts the letter O into 0') do
    expect('poop'.leet).to(eq('p00p'))
  end

  it('converts the capital letter I into 1') do
    expect('Inky'.leet).to(eq('1nky'))
  end

  it('converts the letter S into Z unless it is the first letter of the word') do
    expect('snacks'.leet).to(eq('snackz'))
  end

  it('can take a multi-word input and correctly leet it') do
    expect('I see no problems here'.leet).to(eq('1 s33 n0 pr0bl3mz h3r3'))
  end

end