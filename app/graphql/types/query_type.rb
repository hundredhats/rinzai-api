module Types
  class QueryType < Types::BaseObject
    description 'The query root of this schema'

    field :lists, [ListType], null: true do
      description 'Return all the lists'
    end

    field :list, ListType, null: true do
      description 'Find a list by ID'
      argument :id, ID, required: true
    end

    def list(id:)
      List.find(id)
    end

    def lists
      List.all
    end

  end
end
