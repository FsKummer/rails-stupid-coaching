class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question].downcase

    if @question.match(/i am going to work/)
      #     If the message is I am going to work, the coach will answer Great!
      @answer = 'Great!'
    elsif @question.include?('?')
      # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
      @answer = 'Silly question, get dressed and go to work!'
    else
      # Otherwise the coach will answer I don't care, get dressed and go to work!
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
