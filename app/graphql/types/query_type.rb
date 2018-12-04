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

    field :todos, [TodoType], null: true do
      description 'Return all the todos'
    end

    field :todo, TodoType, null: true do
      description 'Fin a todo by ID'
      argument :id, ID, required: true
    end

    def lists
      List.all
    end

    def list(id:)
      List.find(id)
    end

    def todos
      Todo.all
    end

    def todo(id:)
      Todo.find(id)
    end
  end
end
