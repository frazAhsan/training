class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.string :role
      t.boolean :first_login, default: true

      t.timestamps null: false
    end
  end
end
