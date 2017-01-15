class NaturalWord < ActiveRecord::Base
  belongs_to :natural_language
  belongs_to :word
  has_many :constructed_word_sources, :dependent => :destroy
end
