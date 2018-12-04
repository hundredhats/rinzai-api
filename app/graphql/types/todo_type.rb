module Types
  class TodoType < Types::BaseObject
    description 'A Todo item to be completed'

    field :id, ID, 'The unique ID of the todo', null: false
    field :description, String, 'A description of what should be done', null: false
    field :complete, Boolean, 'Whether or not the todo has been completed', null: false
  end
end
