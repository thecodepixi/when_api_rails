class UpdateRequiredFieldsOnEvents < ActiveRecord::Migration[7.0]
  def change
    change_column_null :events, :label, false
    change_column_null :events, :start_date, false 
  end
end
