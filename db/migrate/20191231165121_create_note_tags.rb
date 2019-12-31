class CreateNoteTags < ActiveRecord::Migration[6.0]
  def change
    create_table :note_tags do |t|
      t.integer :note_id, foreign_key: true
      t.integer :tag_id, foreign_key: true

      t.timestamps
    end
  end
end
