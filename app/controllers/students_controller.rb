class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def destroy
    @student = Student.find(params[:id]).destroy
    redirect_to students_path
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to students_path
    else
      render :edit
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  private

  def student_params
    params.require(:student).permit(:name, :register_number, :status)
  end
end
