module Mutations
  class RemoveTodo < Mutations::BaseMutation
    description "Remove a Todo item from a List"

    argument :id, Integer, required: true

    field :todo, Types::TodoType, null: true
    field :errors, [String], null: false

    def resolve(id:)
      todo = Todo.find_by(id: id)
      if todo
        todo.destroy
        { todo: todo, errors: [] }
      else
        { todo: nil, errors: ["Todo not found"] }
      end
    end
  end
end
