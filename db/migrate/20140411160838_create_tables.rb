class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :admin
      t.timestamps
    end

    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.timestamps
    end
  end
end
