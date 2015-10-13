class FeedbacksController < ApplicationController

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.save
    redirect_to  sections_path
  end

end
