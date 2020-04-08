class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    if @student.active == true
      @status = "active"
    elsif @student.active == false
      @status = "inactive"
    end

  end

  def activate
    if @student.active == true
      @student.update_attribute(:active, false)
    elsif @student.active == false
      @student.update_attribute(:active, true)
    end
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end