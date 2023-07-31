# frozen_string_literal: true

module Mutations
  class EventDelete < BaseMutation
    description "Deletes a event by ID"

    field :event, Types::EventType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      event = ::Event.find(id)
      raise GraphQL::ExecutionError.new "Error deleting event", extensions: event.errors.to_hash unless event.destroy

      { event: event }
    end
  end
end
