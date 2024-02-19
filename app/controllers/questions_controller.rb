class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:question]
  #   if @input
  #     @output = "your are good"
  #   else
  #     @output = "smth gone wrong"
  #   end
  # end
    if @input == 'I am going to work'
      @output = 'Great!'
    elsif @input.include?('?')
      @output = 'Silly question, get dressed and go to work!'
    else
      @output = "I don't care, get dressed and go to work!"
    end
  end
end
