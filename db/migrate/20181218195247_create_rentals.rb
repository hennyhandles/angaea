class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :cost
      t.string :rental_name
      t.text :description
      t.string :category
      t.text :additional_info
      t.string :addressLN1
      t.string :addressLN2
      t.string :state
      t.string :city
      t.string :zipcode
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id

      t.timestamps
    end
  end
end
