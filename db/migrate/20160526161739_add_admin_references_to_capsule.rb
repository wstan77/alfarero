class AddAdminReferencesToCapsule < ActiveRecord::Migration
  def change
    add_reference :capsules, :admin, index: true, foreign_key: true
  end
end
