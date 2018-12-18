module Mutations
  class CreateList < Mutations::BaseMutation
    description "Create an empty List"

    argument :name, String, required: true

    field :list, Types::ListType, null: true
    field :errors, [String], null: false

    def resolve(name:)
      list = List.new(name: name)

      if list.save
        { list: list, errors: [] }
      else
        { list: nil, errors: list.errors.full_messages }
      end
    end
  end
end
