module Mutations
  class RenameList < Mutations::BaseMutation
    description "Rename an existing List"

    argument :id, Integer, required: true
    argument :name, String, required: true

    field :list, Types::ListType, null: true
    field :errors, [String], null: false

    def resolve(id:, name:)
      list = List.find_by(id: id)
      return { list: nil, errors: ["List not found"] } unless list

      if list.update(name: name)
        { list: list, errors: [] }
      else
        { list: nil, errors: list.errors.full_messages }
      end
    end
  end
end
