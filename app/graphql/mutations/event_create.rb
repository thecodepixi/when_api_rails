class Mutations::EventCreate < Mutations::BaseMutation 
  null true 

  argument :label, String, "The unique readable identifier for the event, like a title or a name"
  argument :event_start, GraphQL::Types::ISO8601DateTime, "The start date of the event, in ISO8601DateTime format"
  argument :description, String, "A description of the event", required: false
  argument :event_end, GraphQL::Types::ISO8601DateTime, "The end date of the event, in ISO8601DateTime format", required: false

  field :event, Types::EventType
  field :errors, [String], null: false

  def resolve(label:, event_start:, description: nil, event_end: nil) 
    event = Event.new(label:, event_start: , description:, event_end:)

    if event.save
      {
        event: event, 
        errors: []
      }
    else 
      {
        event: nil,
        errors: event.errors.full_messages 
      }
    end 
  end 
end 