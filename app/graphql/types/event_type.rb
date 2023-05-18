class Types::EventType < Types::BaseObject 
  description "A calendar event"

  field :id, ID, null: false
  field :label, String, "The unique readable identifier for the event, like a title or a name", null: false 
  field :start_date, String, "The start date of the event, in YYYY-MM-DD format", null: false
  field :description, String, "A description of the event"
  field :start_time, String, "The start time of the event, in HH:MM am/pm format"
  field :end_date, String, "The end date of the event, in YYYY-MM-DD format"
  field :end_time, String, "The end time of the event, in HH:MM am/pm format"
end 