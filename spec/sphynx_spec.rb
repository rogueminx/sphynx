require ('sphynx')
require ('rspec')
require ('pry')

describe('#sphynx') do
  it('return true for correct answer for randomly generated question for riddle one') do
    answer = Riddle.new("vowels")
    expect(answer.riddler()).to(eq(true))
  end
  it('return true for correct answer for randomly generated question for riddle two') do
    answer = Riddle.new("your name")
    expect(answer.riddler()).to(eq(true))
  end
  it('return true for correct answer for randomly generated question for riddle three') do
    answer = Riddle.new("the letter e")
    expect(answer.riddler()).to(eq(true))
  end
  it('return true for correct answer for randomly generated question for riddle three') do
    answer = Riddle.new(".iaoeuizsu")
    expect(answer.riddler()).to(eq(false))
  end
end
