class Project < ActiveRecord::Base
has_many :pledges, dependent: :destroy
has_many :favorites, dependent: :destroy
has_many :fans, through: :favorites, source: :user
has_many :categorizations, dependent: :destroy
has_many :categories, through: :categorizations

validates :name, :description, presence: true

validates :description, length: { minimum: 2 }

validates :target_pledge_amount, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

has_attached_file :image, styles: { small: "90x133>", thumb: "50x50>", large: "620x620>" }

validates_attachment :image, 
  :content_type => { :content_type => ['image/jpeg', 'image/png'] },
  :size => { :less_than => 5.megabyte }


##################

def self.accepting_pledges_only
	where("pledging_ends_on >= ?", Time.now).order("pledging_ends_on")
end

def total_pledges
	pledges.sum(:amount)
end

def rate
	(self.total_pledges / self.target_pledge_amount) * 100
end

def project_successful?
	total_pledges >= self.target_pledge_amount
end

end
