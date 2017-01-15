class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.integer :natural_language_id
      t.integer :word_type_id
      t.string :text
      t.timestamps null: false
    end
  end
end
