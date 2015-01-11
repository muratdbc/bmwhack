class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :max_speed

      t.timestamps
    end
  end
end
