class CreateClaims < ActiveRecord::Migration[5.1]
  def change
    create_table :claims do |t|
      t.string :name
      t.string :damage_room_overview_1
      t.string :damage_room_overview_2
      t.string :detail_of_damage_1
      t.string :detail_of_damage_2
      t.string :additional_photos

      t.boolean :terms_of_services

      t.timestamps
    end
  end
end
