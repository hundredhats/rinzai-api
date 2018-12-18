module Mutations
  class RemoveList < Mutations::BaseMutation
    argument :id, Integer, required: true

    field :list, Types::ListType, null: true
    field :errors, [String], null: false

    def resolve(id:)
      list = List.find_by(id: id)
      if list
        list.destroy
        { list: list, errors: [] }
      else
        { list: nil, errors: ["List not found"] }
      end
    end
  end
end
