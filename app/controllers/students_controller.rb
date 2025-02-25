class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit update destroy]

  # list all students on browser
  def index
    @students = Student.all
  end

  # create form for creating students
  def new
    @student = Student.new
  end

  # Saving student into database using form
  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: "Student was successfully created."
    else
      render :new
    end
  end

  # Display a single student on the browser
  def show
  end

  # Editing Student Object
  def edit
  end

  # Student Updating
  def update
    if @student.update(student_params)
      redirect_to @student, notice: "Student was successfully updated."
    else
      render :edit
    end
  end

  # Deleting Student
  def destroy
    @student.destroy
      redirect_to students_path, notice: "Student was successfully destroyed."
  end


  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name, :email)
    end
end
