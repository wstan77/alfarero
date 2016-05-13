class CreateCapsules < ActiveRecord::Migration
  def change
    create_table :capsules do |t|
      t.string :title
      t.text :content
      t.string :link_ref

      t.timestamps null: false
    end
  end
end
