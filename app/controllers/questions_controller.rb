class QuestionsController < ApplicationController
  def ask
  end

  def answer()
    @message = params[:message]
    @replies = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if @message == "I am going to work"
      return  @ans = @replies[0] 
     elsif @message[-1] == "?" 
      return @ans = @replies[1]
    else
      return @ans = @replies[2] 
    end
  end
end
