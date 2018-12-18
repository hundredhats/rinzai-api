module Mutations
  class CreateTodo < Mutations::BaseMutation
    argument :list_id, Integer, required: true
    argument :description, String, required: true

    field :todo, Types::TodoType, null: true
    field :errors, [String], null: false

    def resolve(list_id:, description:)
      list = List.find(list_id)
      todo = list.todos.build(description: description)

      if todo.save
        { todo: todo, errors: [] }
      else
        { todo: nil, errors: todo.errors.full_messages }
      end
    end
  end
end
