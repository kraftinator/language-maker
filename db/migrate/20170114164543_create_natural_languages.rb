class CreateNaturalLanguages < ActiveRecord::Migration
  def change
    create_table :natural_languages do |t|
      t.string :name
      t.string :code
      t.boolean :active
      t.integer :natural_language_family_id
    end
  end
end
