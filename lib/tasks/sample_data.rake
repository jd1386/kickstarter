namespace :db do 
	desc "Fill database with sample data"
	task populate: :environment do
		make_admin_user
		make_projects
	#	make_pledges
	end
end

def make_admin_user
	User.create!(
		name: "Jungdo Lee",
		email: "lee.jungdo@gmail.com",
		password: "foobar",
		password_confirmation: "foobar",
		admin: true
		)
	
end



def make_projects
	10.times do |n|
		name = Faker::Commerce.product_name + " Project"
		description = Faker::Lorem.sentence(100)
		target_pledge_amount = Faker::Number.number(4)
		website = "http://www.orights.com"
		pledging_ends_on = 10.days.from_now
		team_member_1 = Faker::Name.name
		team_member_2 = Faker::Name.name
		category = rand(1..10)
		

		Project.create!(
			name: name,
			description: description,
			target_pledge_amount: target_pledge_amount,
			website: website,
			pledging_ends_on: pledging_ends_on,
			team_members: team_member_1 + " , " + team_member_2,
			category_ids: category

			)
		end
	end

	def make_pledges
		5.times do |n|
			amount = Faker::Number.number(2)
			comment = Faker::Lorem.sentence(3)
			project_id = 1
			user_id = 1

			Pledge.create!(
				user_id: user_id,
				comment: comment,
				project_id: project_id,
				amount: amount

				)
		end
	end