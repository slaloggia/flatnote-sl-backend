class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :content
      t.integer :note_id, foreign_key: true

      t.timestamps
    end
  end
end
