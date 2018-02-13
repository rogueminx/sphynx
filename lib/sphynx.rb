#!/usr/bin/env ruby

class Riddle
  def initialize (user_answer)
    @user_answer = user_answer

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
    if @selected_questions[0] = @question_array[0]
      if @user_answer == "vowels"
        return true
      else
        false
      end
    end
    if @selected_questions[1] = @question_array[1]
      if @user_answer == "your name"
        return true
      else
        false
      end
    end
    if @selected_questions[2] = @question_array[2]
      if @user_answer == "the letter e"
        return true
      else
        false
      end
    end
  end
end
