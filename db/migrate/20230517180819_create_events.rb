class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :label
      t.date :start_date
      t.text :description
      t.time :start_time
      t.date :end_date
      t.time :end_time

      t.timestamps
    end
  end
end
