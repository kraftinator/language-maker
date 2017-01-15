class CreateConstructedLanguages < ActiveRecord::Migration
  def change
    create_table :constructed_languages do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
