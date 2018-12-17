class AddActivityNameToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :activity_name, :string
  end
end
