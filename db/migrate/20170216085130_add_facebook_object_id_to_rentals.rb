class AddFacebookObjectIdToRentals < ActiveRecord::Migration[5.0]
  def change
    add_column :rentals, :facebook_object_id, :string
  end
end
