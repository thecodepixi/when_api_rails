class UpdateEventRows < ActiveRecord::Migration[7.0]
  def change
    change_table :events do |t| 
      t.remove :start_time, :end_time
      t.rename :start_date, :start 
      t.rename :end_date, :end 
    end 
  end
end
