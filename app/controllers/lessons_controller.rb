class LessonsController < ApplicationController
  def new
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new
  end

  def show
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    @lessons = Lesson.all
    # binding.pry
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      redirect_to section_path(@section)
    else
      render :new
    end
  end


  def edit
    @lesson = Lesson.find(params[:id])
    @section = Section.find(params[:section_id])
  end

  def update
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to section_path(@section)
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to section_path(@section)
  end


  private
    def lesson_params
      params.require(:lesson).permit(:name, :section_id, :lesson_content)
    end
end
