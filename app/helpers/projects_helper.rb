module ProjectsHelper

	def format_pledging_ends_on(project)
		if  Time.now < project.pledging_ends_on
			distance_of_time_in_words(Time.now, project.pledging_ends_on, include_seconds: true) + " remaining"
		else
			content_tag(:strong, "Expired")
		end
	end

	def image_for(project)
	project.image.exists? ? image_tag(project.image.url(:small)) : image_tag('placeholder.png')
	end


end