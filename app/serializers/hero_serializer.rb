class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :powers

  def powers
    object.powers.map do |power|
      {
        id: power.id,
        name: power.name,
        description: power.description,
        strength: object.hero_powers.find_by(power_id: power.id).strength
      }
    end
  end
end