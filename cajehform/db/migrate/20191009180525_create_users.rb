class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :phone_number
      t.boolean :collab
      t.boolean :leader
      t.string :password_confirmation

      t.timestamps
    end
  end
end
