class ChangeEventStartAndEndType < ActiveRecord::Migration[7.0]
  def change
    change_column :events, :event_start, :datetime
    change_column :events, :event_end, :datetime
  end
end
