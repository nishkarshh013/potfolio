class ProfilesController < ApplicationController
	def index
	end

	def experience
		if params[:exp] == "true"
		  respond_to do |format|
		  	format.html
  			format.js
		    format.turbo_stream do
		      render turbo_stream: turbo_stream.replace(
		        'full-section',
		        partial: 'profiles/experience'
		      )
		    end
		  end
		elsif params[:skills] == "true"
			respond_to do |format|
				format.html
  			format.js
		    format.turbo_stream do
		      render turbo_stream: turbo_stream.replace(
		        'full-section',
		        partial: 'profiles/skills'
		      )
		    end
		  end
		elsif params[:edu] == "true"
			respond_to do |format|
				format.html
  			format.js
		    format.turbo_stream do
		      render turbo_stream: turbo_stream.replace(
		        'full-section',
		        partial: 'profiles/education'
		      )
		    end
		  end
		elsif params[:contact] == "true"
			respond_to do |format|
				format.html
				format.js
		    format.turbo_stream do
		      render turbo_stream: turbo_stream.replace(
		        'full-section',
		        partial: 'profiles/contact'
		      )
	    	end
		  end
		# elsif params[:back] == "true"
		# 	respond_to do |format|
		#     format.turbo_stream do
		#       render turbo_stream: turbo_stream.replace(
		#         'index-main',
		#         partial: 'profiles/index'
		#       )
		#     end
		#   end
		elsif params[:projects] == "true"
			respond_to do |format|
			  format.turbo_stream do
			    render turbo_stream: turbo_stream.replace(
			      'full-section',
			      partial: 'profiles/projects'
			      )
			  end
		  end
		end
	end
end

