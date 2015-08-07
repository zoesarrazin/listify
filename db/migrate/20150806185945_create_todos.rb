class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :list_id
      t.string :reminder

      t.timestamps
    end
  end
end
