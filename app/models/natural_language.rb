class NaturalLanguage < ActiveRecord::Base
  
  belongs_to :natural_language_family
  has_many :natural_words, :dependent => :destroy
  has_many :words, :dependent => :destroy
  
  def family
    natural_language_family
  end
  
end
