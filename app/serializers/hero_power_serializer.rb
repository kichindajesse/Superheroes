class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :hero_id, :power_id, :created_at, :updated_at
end
