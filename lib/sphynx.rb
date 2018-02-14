#!/usr/bin/env ruby

class Riddle
  def initialize (user_answer1, user_answer2, user_answer3)
    @user_answer1 = user_answer1
    @user_answer2 = user_answer2
    @user_answer3 = user_answer3
  end
  def question_generator
    @question_array = ["We're five little items of an everyday sort; you'll find us all in 'a tennis court'.", "What belongs to you, but is used by others?", "What is the beginning of eternity, the end of time and space, the beginning of every end and the end of every race?"]
    @selected_questions=[]
    first = @question_array.sample
    @selected_questions.push(first)
    second = (@question_array - @selected_questions).sample
      @selected_questions.push(second)
    third = (@question_array - @selected_questions).sample
      @selected_questions.push(third)
    return @selected_questions
    # @random_question = @question_array.sample
  end


  def riddler
    self.question_generator()
    answer = {"We're five little items of an everyday sort; you'll find us all in 'a tennis court'." => "vowels", "What belongs to you, but is used by others?" => "your name", "What is the beginning of eternity, the end of time and space, the beginning of every end and the end of every race?" => "the letter e"}
    # binding.pry
    if (@selected_questions[0] = @question_array[0]) || (@selected_questions[1] = @question_array[0]) || (@selected_questions[2] = @question_array[0]) && (@user_answer1 == "vowels")
      return true
      else
        "That was wrong!!!!"
    end
    if (@selected_questions[0] = @question_array[1]) || (@selected_questions[1] = @question_array[1]) || (@selected_questions[2] = @question_array[1]) && (@user_answer2 == "your name")
      return true
      else
        "That was wrong!!!!"
    end
    if (@selected_questions[0] = @question_array[2]) || (@selected_questions[1] = @question_array[2]) || (@selected_questions[2] = @question_array[2]) && (@user_answer3 == "the letter e")
      return true
      else
        "That was wrong!!!!"
    end
  end
end
#
# until (@selected_questions[x] = @question_array[0])
#   if (@selected_questions[x] = @question_array[0]) && (@user_answer1 == "vowels")
#     return "this is true"
#   elsif (@selected_questions[x] = @question_array[0]) && (@user_answer1 != "vowels")
#     return "this is not true"
#   else x = x + 1
#   end
# end
# until (@selected_questions[x] = @question_array[1])
#   if (@selected_questions[x] = @question_array[1]) && (@user_answer2 == "your name")
#     puts "this is true"
#   elsif (@selected_questions[x] = @question_array[1]) && (@user_answer2 != "your name")
#     return false
#   else x = x + 1
#   end
# end
# until (@selected_questions[x] = @question_array[2])
#   if (@selected_questions[x] = @question_array[2]) && (@user_answer3 == "the letter e")
#     puts "this is true"
#   elsif (@selected_questions[x] = @question_array[2]) && (@user_answer3 != "the letter e")
#     return false
#   else x = x + 1
#   end
# end
