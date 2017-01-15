class CreateConstructedWords < ActiveRecord::Migration
  def change
    create_table :constructed_words do |t|
      t.integer :constructed_language_id
      t.integer :word_id
      t.string :text
      t.timestamps null: false
    end
  end
end
