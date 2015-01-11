class AddNotificationToEvent < ActiveRecord::Migration
  def change
    add_column :events, :notification_id, :integer
  end
end
