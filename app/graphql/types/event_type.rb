class Types::EventType < Types::BaseObject 
  implements GraphQL::Types::Relay::Node

  field :id, ID, null: false
  field :label, String, "The unique readable identifier for the event, like a title or a name", null: false 
  field :event_start, GraphQL::Types::ISO8601DateTime, "The start date of the event, in ISO8601 format", null: false
  field :description, String, "A description of the event"
  field :event_end, GraphQL::Types::ISO8601DateTime, "The end time of the event, in ISO8601 format"
end 