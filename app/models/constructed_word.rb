class ConstructedWord < ActiveRecord::Base
  belongs_to :constructed_language
  belongs_to :word
  has_many :constructed_word_sources, :dependent => :destroy
end
