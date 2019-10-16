class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :info
      t.string :location
      t.date :date
      t.integer :creator_id, index: true

      t.timestamps
    end
  end
end
