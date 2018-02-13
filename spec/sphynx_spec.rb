require ('sphynx')
require ('rspec')
require ('pry')

describe('#sphynx') do
  it('return random key value pair (riddle)') do
    answer = Riddle.new()
    expect(answer.riddler("We're five little items of an everyday sort; you'll find us all in 'a tennis court","vowels")).to(eq(true))
  end
end
