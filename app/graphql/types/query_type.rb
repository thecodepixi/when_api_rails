module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :events, [EventType], "All events"

    field :event, EventType, "Find an Event by ID" do
      argument :id, ID
    end

    def event(id:)
      Event.find(id)
    end 

    def events 
      Event.all
    end

  end
end
