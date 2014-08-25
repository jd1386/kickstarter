module ProjectsHelper

	def format_pledging_ends_on(project)
		if  Time.now < project.pledging_ends_on
			distance_of_time_in_words(Time.now, project.pledging_ends_on, include_seconds: true) + " to go"
		else
			content_tag(:strong, "Expired")
		end
	end

	def image_for(project)
	project.image.exists? ? image_tag(project.image.url(:small)) : image_tag('placeholder.png', height: '90', alt: 'No Image')
	end

	def format_successful(project)
		if project.project_successful?
			content_tag(:span, "Project Success!", class: "label label-success")
		else
			content_tag(:span, "#{number_to_percentage(project.rate, precision: 2)}", class: "label label-default")
		end
	end


end