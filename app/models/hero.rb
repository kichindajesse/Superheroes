class Hero < ApplicationRecord
  attribute :super_name, :string
  attribute :name, :string
  has_many :hero_powers
  has_many :powers, through: :hero_powers
end
