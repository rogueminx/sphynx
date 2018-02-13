require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphynx')
require('pry')

get('/') do
  answers = Riddle.new(@riddle)
  question1 = answers.question_generator
  @question1 = question1[0]
  @question2 = question1[1]
  @question3 = question1[2]
  erb(:input)
end

post ('/output') do
  @riddle = params.fetch("riddleone")
  answers = Riddle.new(@riddle)
  @question1 = answers.question_generator
  @question2 = answers.question_generator
  @question3 = answers.question_generator
  @correct_or_wrong = answers.riddler
  erb(:output)

end
