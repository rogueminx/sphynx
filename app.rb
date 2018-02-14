require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphynx')
require('pry')

get('/') do
  answers = Riddle.new(@riddleone, @riddletwo, @riddlethree)
  question1 = answers.question_generator
  @question1 = question1[0]
  @question2 = question1[1]
  @question3 = question1[2]
  erb(:input)
end

post ('/output') do
  answers = Riddle.new(@riddleone, @riddletwo, @riddlethree)
  @riddleone = params.fetch('riddleone')
  @riddletwo = params.fetch('riddletwo')
  @riddlethree = params.fetch('riddlethree')
  @correct_or_wrong = answers.riddler
  erb(:output)

end
