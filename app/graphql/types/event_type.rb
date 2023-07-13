class Types::EventType < Types::BaseObject 
  description "A calendar event"

  field :id, ID, null: false
  field :label, String, "The unique readable identifier for the event, like a title or a name", null: false 
  field :start_date, GraphQL::Types::ISO8601Date, "The start date of the event, in ISO8601 format", null: false
  field :description, String, "A description of the event"
  field :start_time, GraphQL::Types::ISO8601DateTime, "The start time of the event, ISO8601 format"
  field :end_date, GraphQL::Types::ISO8601Date, "The end date of the event, in ISO8601 format"
  field :end_time, GraphQL::Types::ISO8601DateTime, "The end time of the event, in ISO8601 format"
end 