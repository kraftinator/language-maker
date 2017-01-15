class ConstructedWordSource < ActiveRecord::Base
  belongs_to :constructed_word
  belongs_to :natural_word
end
