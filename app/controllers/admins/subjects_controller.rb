class Admins::SubjectsController < Admins::BaseController
  before_action :find_subject, only: [:show, :edit, :update, :destroy]

  def index
    @subjects = Subject.all
  end 

  def show
  end

  def new
    @subject = Subject.new
  end
  
  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:success] = "subject created"
      redirect_to admins_subject_path(@subject)
    else
      flash.now[:danger] = "create subject fail"
      render 'new'
    end
  end

  def edit 
  end

  def update
    if @subject.update_attributes(subject_params)
      flash[:success] = "subject updated"
      redirect_to admins_subject_path(@subject)
    else
      flash.now[:danger] = "update subject fail"
      render 'edit'
    end 
  end

  def destroy
    if @subject.destroy
      flash[:success] = "subject deleted"
      redirect_to admins_subjects_path
    else
      flash.now[:danger] = "destroy subject fail"
      render 'index'
    end
  end


  private
  def subject_params
    params.require(:subject).permit(:name, :instruction, :introduction)
  end

  def find_subject
    @subject =Subject.find(params[:id])
  end
end
