module Types
  class MutationType < Types::BaseObject
    field :event_delete, mutation: Mutations::EventDelete
    field :event_update, mutation: Mutations::EventUpdate
    field :event_create, mutation: Mutations::EventCreate
  end
end
