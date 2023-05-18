module Types
  class MutationType < Types::BaseObject
    field :event_create, mutation: Mutations::EventCreate
  end
end
