
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    # @student = Student.new
    # @student.first_name = params[:student][:first_name]
    # @student.last_name = params[:student][:last_name]
    # @student.save
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    # binding.pry
    redirect_to students_path(@student)
  end

end
