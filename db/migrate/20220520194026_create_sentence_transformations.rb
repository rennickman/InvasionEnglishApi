class CreateSentenceTransformations < ActiveRecord::Migration[7.0]
  def change
    create_table :sentence_transformations do |t|
      t.string :original
      t.string :keyword
      t.string :partial
      t.string :answer

      t.timestamps
    end
  end
end
