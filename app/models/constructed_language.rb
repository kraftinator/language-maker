class ConstructedLanguage < ActiveRecord::Base
  has_many :constructed_words, :dependent => :destroy
end
