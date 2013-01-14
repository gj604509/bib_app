class Publication < ActiveRecord::Base
  attr_accessible :month, :notes, :pages, :pub_name, :pub_type, :summary, :title, :year #, :user_id
  belongs_to :user
  
  validates :user_id, presence: true
  
  validates :title, presence: true,
  									length: { maximum: 256 }
  
  validates :pub_type, presence: true
  
  validates :pub_name, presence: true,
  										 length: { maximum: 256 }
  
  @max = Time.now.year
  validates :year, presence: true,
  								 numericality: { :greater_than => 1899 , :less_than_or_equal_to => @max}
  								
  						
  validates :month, presence: true,
  									numericality: { :greater_than => 0 , :less_than => 13}
  
  validates :pages, presence: true,
  									numericality: { :greater_than => 0 }
  
  #validates :notes, presence: true
  
  validates :summary, presence: true
  
  default_scope order: 'publications.created_at DESC'
end
