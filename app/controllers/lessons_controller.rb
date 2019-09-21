class LessonsController < ApplicationController
	before_action :authenticate_member!
	before_action :require_authorized_for_lessons, only: [:show]

	def show
			
	end

	private

	def require_authorized_for_current_lesson
    	if current_lesson.section.course.member != current_member
			render plain: "Unauthorized", status: :unauthorized
    	end
 	end

 	def require_authorized_for_lessons
 			if current_member.enrolled_in?(current_lesson.section.course) != true
 				redirect_to course_path(current_lesson.section.course), alert: 'You are not enrolled in the course.'
 			end
 	end


 	helper_method :current_lesson
  	def current_lesson
    	@current_lesson ||= Lesson.find(params[:id])
  	end
end
