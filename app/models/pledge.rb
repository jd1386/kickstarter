class Pledge < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  AMOUNTS = [25, 50, 100, 250, 500]

  validates :amount, presence: true
  validates :amount, inclusion: { in: AMOUNTS }





end
