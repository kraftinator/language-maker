class CreateWordTypes < ActiveRecord::Migration
  def change
    create_table :word_types do |t|
      t.string :name
    end
  end
end
