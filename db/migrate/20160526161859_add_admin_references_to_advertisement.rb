class AddAdminReferencesToAdvertisement < ActiveRecord::Migration
  def change
    add_reference :advertisements, :admin, index: true, foreign_key: true
  end
end
