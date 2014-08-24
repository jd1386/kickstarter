class User < ActiveRecord::Base
	has_many :pledges, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :favorite_projects, through: :favorites, source: :project

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true,
  									format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
  									uniqueness: { case_sensitive: false } 
	validates :password, length: { minimum: 6, allow_blank: true }

	def self.authenticate(email, password)
		user = User.find_by(email: email)
		user && user.authenticate(password)
	end		

end
