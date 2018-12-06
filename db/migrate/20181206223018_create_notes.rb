class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.boolean :pinned, default: false

      t.timestamps
    end
  end
end
