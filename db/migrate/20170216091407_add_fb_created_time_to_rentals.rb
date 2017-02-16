class AddFbCreatedTimeToRentals < ActiveRecord::Migration[5.0]
  def change
    add_column :rentals, :fb_created_time, :datetime
  end
end
