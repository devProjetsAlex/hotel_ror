class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.integer :room
      t.string :client_id
      t.string :client_email
      t.string :client_request

      t.timestamps
    end
  end
end
