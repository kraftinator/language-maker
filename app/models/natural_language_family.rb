class NaturalLanguageFamily < ActiveRecord::Base
  
  has_many :natural_languages, :dependent => :destroy
  has_many :children, :class_name => "NaturalLanguageFamily", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent, :class_name => "NaturalLanguageFamily"
  
  #named_scope :top_level, :conditions => ["parent_id is null"], :order => 'display_name'
  
end
