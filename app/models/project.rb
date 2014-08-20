class Project < ActiveRecord::Base

has_attached_file :image, styles: { small: "90x133>", thumb: "50x50>" },
	:storage => :aws,
	:download => true,
	:dropbox_credentials => Rails.root.join("config/dropbox.yml")

validates_attachment :image, 
  :content_type => { :content_type => ['image/jpeg', 'image/png'] },
  :size => { :less_than => 5.megabyte }

##################

def self.accepting_pledges_only
	where("pledging_ends_on >= ?", Time.now).order("pledging_ends_on")

end

end
