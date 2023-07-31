# frozen_string_literal: true

module Mutations
  class EventUpdate < BaseMutation
    description "Updates a event by id"

    field :event, Types::EventType, null: false

    argument :id, ID, required: true
    argument :event_input, Types::EventInputType, required: true

    def resolve(id:, event_input:)
      event = ::Event.find(id)
      raise GraphQL::ExecutionError.new "Error updating event", extensions: event.errors.to_hash unless event.update(**event_input)

      { event: event }
    end
  end
end
