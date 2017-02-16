class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.text :json_dump

      t.timestamps
    end
  end
end
