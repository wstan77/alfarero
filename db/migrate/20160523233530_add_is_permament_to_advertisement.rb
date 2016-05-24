class AddIsPermamentToAdvertisement < ActiveRecord::Migration
  def change
    add_column :advertisements, :is_permanent, :boolean, default: true
    add_column :advertisements, :start_at, :datetime
    add_column :advertisements, :end_at, :datetime
  end
end
