class CreateNaturalLanguageFamilies < ActiveRecord::Migration
  def change
    create_table :natural_language_families do |t|
      t.integer :parent_id
      t.string :name
    end
  end
end
