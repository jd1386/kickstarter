class Pledge < ActiveRecord::Base
  
  AMOUNTS = [25, 50, 100, 250, 500]

  validates :name, :amount, presence: true
  validates :comment, length: { minimum: 4 }
  validates :amount, inclusion: { in: AMOUNTS }

  belongs_to :project



end
