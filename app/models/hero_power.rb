class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power

  attribute :strength

  validates :strength, inclusion: { in: ['Strong', 'Weak', 'Average'] }
end
