class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params.require(:student))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end
end



# class StudentsController < ApplicationController
# 	def index
# 		@student = StudentsController.all
# 	end
#
# 	def show
# 		@student = StudentsController.find(params[:id])
# 	end
#
# 	def new
# 		@student = StudentsController.new
# 	end
#
#
#   def create
#     @student = StudentsController.new(student_params(:first_name, :last_name))
#     @student.save
#     redirect_to student_path(@student)
#   end
#
#   def update
#     @student = StudentsController.find(params[:id])
#     @student.update(student_params(:first_name, :last_name))
#     redirect_to student_path(@student)
#   end
#
# 	def edit
# 	  @student = StudentsController.find(params[:id])
# 	end
#
#   private
#
#
#   # We pass the permitted fields in as *args;
#   # this keeps `student_params` pretty dry while
#   # still allowing slightly different behavior
#   # depending on the controller action
#   def student_params(*args)
#     params.require(:student).permit(*args)
#   end
