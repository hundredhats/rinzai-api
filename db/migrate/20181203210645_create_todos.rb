class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text :description
      t.boolean :complete, default: false, null: false
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
