module Types
  class MutationType < Types::BaseObject
    field :create_todo, mutation: Mutations::CreateTodo
    field :create_list, mutation: Mutations::CreateList
  end
end
