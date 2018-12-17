class AddDayandtimeToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :dayandtime, :datetime
  end
end
