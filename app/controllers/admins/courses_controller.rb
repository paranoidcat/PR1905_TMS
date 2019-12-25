class Admins::CoursesController < Admins::BaseController
  before_action :find_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end 

  def show
  end

  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:success] = "course created"
      redirect_to admins_course_path(@course)
    else
      flash.now[:danger] = "create course fail"
      render 'new'
    end
  end

  def edit 
  end

  def update
    if @course.update_attributes(course_params)
      flash[:success] = "course updated"
      redirect_to admins_course_path(@course)
    else
      flash.now[:danger] = "update course fail"
      render 'edit'
    end 
  end

  def destroy
    if @course.destroy
      flash[:success] = "course deleted"
      redirect_to admins_courses_path
    else
      flash.now[:danger] = "destroy course fail"
      render 'index'
    end
  end


  private
  def course_params
    params.require(:course).permit(:name, :introduction)
  end

  def find_course
    @course = Course.find(params[:id])
  end
end
