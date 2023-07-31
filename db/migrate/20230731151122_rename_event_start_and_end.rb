class RenameEventStartAndEnd < ActiveRecord::Migration[7.0]
  def change
    change_table :events do |t| 
      t.rename :start, :event_start
      t.rename :end, :event_end 
    end 
  end
end
