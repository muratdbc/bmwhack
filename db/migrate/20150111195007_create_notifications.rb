class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :method

      t.timestamps
    end
  end
end
