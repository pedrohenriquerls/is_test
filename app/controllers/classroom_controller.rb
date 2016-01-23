class ClassroomController < ApplicationController
  def index
    @courses = Course.all
    @students = Student.all
  end

  def create
    if classroom_params[:course_id].nil?
      redirect_to :courses, notice: 'Necessário cadastrar um curso'
    elsif classroom_params[:student].nil?
      redirect_to :students, notice: 'Necessário cadastrar um Aluno'
    else
      Classroom.create classroom_params
      redirect_to :courses, notice: 'Matricula criada com sucesso'
    end
  end

  private
  def classroom_params
    {student_id: params[:student], course_id: params[:course]}
  end
end