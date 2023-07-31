# frozen_string_literal: true

module Types
  class EventInputType < Types::BaseInputObject
    argument :id, ID, required: false
    argument :label, String, required: false
    argument :event_start, GraphQL::Types::ISO8601DateTime, required: false
    argument :description, String, required: false
    argument :event_end, GraphQL::Types::ISO8601DateTime, required: false
  end
end
