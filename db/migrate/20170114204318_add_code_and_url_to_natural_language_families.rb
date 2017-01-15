class AddCodeAndUrlToNaturalLanguageFamilies < ActiveRecord::Migration
  def change
    add_column :natural_language_families, :code, :string
    add_column :natural_language_families, :url, :string
  end
end
