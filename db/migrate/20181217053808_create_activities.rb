class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      #generate name

      t.text :content
      t.string :additional_info
      t.references :user, foreign_key: true
      t.float :cost
      t.string :addressLN1
      t.string :addressLN2
      t.string :city
      t.string :state
      t.integer :zip


      t.timestamps
    end
    add_index :activities, [:user_id, :created_at]
  end
end
