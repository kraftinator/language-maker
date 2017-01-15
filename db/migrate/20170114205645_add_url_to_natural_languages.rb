class AddUrlToNaturalLanguages < ActiveRecord::Migration
  def change
    add_column :natural_languages, :url, :string
  end
end
