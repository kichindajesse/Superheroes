class PowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :heroes

  def heroes
    object.heroes.map do |hero|
      {
        id: hero.id,
        name: hero.name,
        strength: hero.hero_powers.find_by(power_id: object.id).strength
      }
    end
  end
end