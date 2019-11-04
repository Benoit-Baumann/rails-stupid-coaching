class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:question].strip.downcase
    @answer = if question[-1] == '?'
                'Silly question, get back to work'
              elsif question == 'i am going to work'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
