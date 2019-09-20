class EnrollmentsController < ApplicationController
before_action :authenticate_member!

  def create
  	current_member.enrollments.create(course: current_course)
	redirect_to course_path(current_course)  
  end
  private

  def current_course
    @current_course ||= Course.find(params[:course_id])
  end
end
