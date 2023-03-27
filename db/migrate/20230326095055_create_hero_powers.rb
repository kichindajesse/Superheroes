class CreateHeroPowers < ActiveRecord::Migration[6.1]
  def change
    create_table :hero_powers do |t|
      t.belongs_to :hero, null: false
      t.belongs_to :power, null: false
      t.string :strength

      t.timestamps
    end
  end
end
