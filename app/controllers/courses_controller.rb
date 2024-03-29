class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end
  
  def new
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to '/courses'
    else
      render 'new'
    end  
  end
  
  private
    def course_params
      params.require(:course).permit(:name, :image)
    end 
  
end
