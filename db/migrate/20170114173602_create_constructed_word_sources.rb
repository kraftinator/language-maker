class CreateConstructedWordSources < ActiveRecord::Migration
  def change
    create_table :constructed_word_sources do |t|
      t.integer :constructed_word_id
      t.integer :natural_word_id
    end
  end
end
