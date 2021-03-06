module Types
  class ListType < Types::BaseObject
    description 'A list of Todo items to be completed'

    field :id, ID, 'The unique ID of this list', null: false
    field :name, String, 'The name of this list', null: false
    field :todos, [TodoType], 'A list of todos associated with the list', null: false
  end
end
