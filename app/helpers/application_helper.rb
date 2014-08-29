module ApplicationHelper

def page_title
	if content_for?(:title)
		"Kickstarter - #{content_for(:title)}"
	else
		"Kickstarter"
	end
end

end
