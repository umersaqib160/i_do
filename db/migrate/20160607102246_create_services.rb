class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :supplier_id

      t.timestamps null: false
    end

    add_foreign_key :services, :users, column: :supplier_id
    add_index :services, :supplier_id
  end
end
