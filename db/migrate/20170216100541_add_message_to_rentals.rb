class AddMessageToRentals < ActiveRecord::Migration[5.0]
  def change
    add_column :rentals, :message, :text
  end
end
