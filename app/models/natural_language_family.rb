class NaturalLanguageFamily < ActiveRecord::Base
  
  has_many :natural_languages, :dependent => :destroy
  has_many :children, :class_name => "NaturalLanguageFamily", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent, :class_name => "NaturalLanguageFamily"
  
  validates :name, :uniqueness => true
  
  def primary?
    parent == nil
  end
  
  def primary
    #return self if primary?
    #return parent.primary
    primary? ? self : parent.primary
  end
  
  #named_scope :top_level, :conditions => ["parent_id is null"], :order => 'display_name'
  
end
