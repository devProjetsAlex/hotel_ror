class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :room_description
      t.string :room_vue
      t.decimal :room_price
      t.boolean :room_vacancy
      t.timestamps
    end
  end
end
