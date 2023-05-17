require "graphql/rake_task"
GraphQL::RakeTask.new(schema_name: "WhenApiRailsSchema", directory: Rails.root.join("app/graphql/"))