class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :status
      t.string :review
      t.datetime :datetime
      t.string :street
      t.string :city
      t.string :zipcode
      t.text :message
      t.references :service, index: true, foreign_key: true
      t.integer :customer_id

      t.timestamps null: false
    end
    add_foreign_key :reservations, :users, column: :customer_id
    add_index :reservations, :customer_id
  end
end
