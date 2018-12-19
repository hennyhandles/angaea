class CreateActivities < ActiveRecord::Migration[5.2]
 def change
   create_table :activities do |t|
     #generate name

<<<<<<< HEAD
     t.text :content, null: false
     t.string :activity_name, null: false
     t.string :additional_info
     t.references :user, foreign_key: true
     t.string :cost, null: false
     t.string :addressLN1, null: false
     t.string :addressLN2
     t.string :city, null: false
     t.string :state, null: false
     t.string :zip, null: false
     t.string :picture
     t.datetime :start_date
     t.datetime :end_date
=======
      t.text :content, null: false
      t.string :activity_name, null: false
      t.string :additional_info
      t.references :user, foreign_key: true
      t.string :cost, null: false
      t.string :addressLN1, null: false
      t.string :addressLN2
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.string :picture
      t.datetime :start_date
      t.datetime :end_date
>>>>>>> c7c050335deabb0996d61305d40af6fd1898c113


     t.timestamps
   end
   add_index :activities, [:user_id, :created_at]
 end
end
