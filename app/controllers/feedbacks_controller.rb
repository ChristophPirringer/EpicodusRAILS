class FeedbacksController < ApplicationController

  def create
    @feedback = Feedback.new(content: feedback_params[:content],section_id: params[:section_id])
    binding.pry
    @feedback.save
    redirect_to  sections_path
  end


    private
    def feedback_params
      params.require(:feedback).permit(:content, :section_id)
    end

end
