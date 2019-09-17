class CoursesController < ApplicationController
	def index
		@courses = Course.all
	end

	def show
		@section=Section.new
		@lesson = Lesson.new 
		@course = Course.find(params[:id])

	end
end
