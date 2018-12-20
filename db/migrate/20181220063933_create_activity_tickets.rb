class CreateActivityTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_tickets do |t|

      t.timestamps
    end
  end
end
