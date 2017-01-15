class CreateNaturalWords < ActiveRecord::Migration
  def change
    create_table :natural_words do |t|
      t.integer :word_id
      t.integer :natural_language_id
      t.string :text
      t.string :original_text
      t.timestamps null: false
    end
  end
end
