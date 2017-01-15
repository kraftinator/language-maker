class Word < ActiveRecord::Base
  belongs_to :natural_language
  belongs_to :word_type
  has_many :constructed_words, :dependent => :destroy
  has_many :natural_words, :dependent => :destroy
end
