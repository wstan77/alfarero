class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :names
      t.string :lastnames
      t.string :email
      t.string :password
      t.boolean :is_deleted, :default=>false

      t.timestamps null: false
    end
  end
end
