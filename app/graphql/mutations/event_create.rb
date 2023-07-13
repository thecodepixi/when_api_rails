class Mutations::EventCreate < Mutations::BaseMutation 
  null true 

  argument :label, String, "The unique readable identifier for the event, like a title or a name"
  argument :start_date, GraphQL::Types::ISO8601Date, "The start date of the event, ISO8601 format"
  argument :description, String, "A description of the event", required: false
  argument :start_time, GraphQL::Types::ISO8601DateTime, "The start time of the event, ISO8601", required: false
  argument :end_date, GraphQL::Types::ISO8601Date, "The end date of the event, ISO8601 format", required: false
  argument :end_time, GraphQL::Types::ISO8601DateTime, "The end time of the event, ISO8601", required: false

  field :event, Types::EventType
  field :errors, [String], null: false

  def resolve(label:, start_date:, description: nil, start_time: nil, end_date: nil, end_time: nil) 
    event = Event.new(label:, start_date:, description:, start_time:, end_date:, end_time:)

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