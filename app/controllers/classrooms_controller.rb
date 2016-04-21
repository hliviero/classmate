class ClassroomsController < ApplicationController
  def new
    @students = Student.all
    @courses = Course.all
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      redirect_to classrooms_path
    else
      render :new
    end
  end

  def index
    @classroom = Classroom.all
  end

  def destroy
    @classroom = Classroom.find(params[:id]).destroy
    redirect_to classrooms_path
  end

  def edit
    @classroom = Classroom.find(classroom_params)
  end

  def update
    @classroom = Classroom.find(params[:id])
    if @classroom.update(classroom_params)
      redirect_to classrooms_path
    else
      render :new
    end
  end


  private

  def classroom_params
    params.require(:classroom).permit(:student_id, :course_id)
  end

end
