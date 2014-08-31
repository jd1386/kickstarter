namespace :db do 
	desc "Fill database with sample data"
	task populate: :environment do
		make_admin_user
		make_users
		make_projects
		make_pledges
	end
end

def make_admin_user
	u = User.find_by(email: "lee.jungdo@gmail.com")
	if u == nil
		User.create!(
			name: "Jungdo Lee",
			email: "lee.jungdo@gmail.com",
			password: "foobar",
			password_confirmation: "foobar",
			profile: Faker::Lorem.sentence(5),
			admin: true
			)
	end
	
end


def make_users
	50.times do |n|
		name = Faker::Name.name
		email = "example_user_#{n}@gmail.com"
		password = "foobar"
		password_confirmation = "foobar"
		profile = Faker::Lorem.sentence(20)

		User.create!(
			name: name,
			email: email,
			password: password,
			password_confirmation: password_confirmation,
			profile: profile
			)
		end
end



def make_projects
	100.times do |n|
		name = Faker::Commerce.product_name + " Project"
		description = Faker::Lorem.sentence(100)
		target_pledge_amount = Faker::Number.number(4)
		website = "http://www.orights.com"
		pledging_ends_on = 10.days.from_now
		category = rand(1..9)
		user_id = rand(1..10)
		

		Project.create!(
			name: name,
			description: description,
			target_pledge_amount: target_pledge_amount,
			website: website,
			pledging_ends_on: pledging_ends_on,
			category_ids: category,
			user_id: user_id
			)
		end
	end

	def make_pledges
		50.times do |n|
			amount = Faker::Number.number(2)
			comment = Faker::Lorem.sentence(3)
			project_id = rand(1..10)
			user_id = rand(1..10)

			Pledge.create!(
				user_id: user_id,
				comment: comment,
				project_id: project_id,
				amount: 50

				)
		end
	end