module Mutations
  class ToggleTodoComplete < Mutations::BaseMutation
    description "Make an incomplete todo complete, or vice versa"

    argument :id, Integer, required: true

    field :todo, Types::TodoType, null: true
    field :errors, [String], null: false

    def resolve(id:)
      todo = Todo.find_by(id: id)
      return { todo: nil, errors: ["Todo not found"] } unless todo

      if todo.update(complete: !todo.complete)
        { todo: todo, errors: [] }
      else
        { todo: nil, errors: todo.errors.full_messages }
      end

    end
  end
end
