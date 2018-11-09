class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :answer_choice_id
      t.integer :author_id
      t.timestamps
    end
    add_index :responses, :answer_choice_id
    add_index :responses, :author_id
  end
end
