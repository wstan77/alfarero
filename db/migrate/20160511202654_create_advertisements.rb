class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.string :description
      t.integer :text_position, default: 0
      t.string :url_info
      t.string :background_img
      t.string :main_img
      t.boolean :is_visible, default: true

      t.timestamps null: false
    end
  end
end
