class Mutations::EventCreate < Mutations::BaseMutation 
  null true 

  argument :label, String, "The unique readable identifier for the event, like a title or a name"
  argument :start_date, String, "The start date of the event, in YYYY-MM-DD format"
  argument :description, String, "A description of the event", required: false
  argument :start_time, String, "The start time of the event, in HH:MM am/pm format", required: false
  argument :end_date, String, "The end date of the event, in YYYY-MM-DD format", required: false
  argument :end_time, String, "The end time of the event, in HH:MM am/pm format", required: false

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