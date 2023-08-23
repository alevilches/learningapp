class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @course = Course.find(@lesson.course_id) # I am proud of this line
  end


  def new
    @lesson = Lesson.new
  end
  
  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to '/courses'
    else
      render 'new'
    end
  end
  



  
  private
  def lesson_params
    params.require(:lesson).permit(:title, :question, :answer, :image, :course_id)
  end
  
  def answer_params
    params.require(:answer).permit(:content)
  end
end
