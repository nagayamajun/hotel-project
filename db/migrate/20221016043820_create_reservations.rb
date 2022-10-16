class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.date :checkin
      t.date :checkout
      t.integer :number
      t.references :hotel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
