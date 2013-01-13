class Publication < ActiveRecord::Base
  attr_accessible :month, :notes, :pages, :pub_name, :pub_type, :summary, :title, :year #, :user_id
  belongs_to :user
  
  validates :user_id, presence: true
  
  validates :title, presence: true,
  									length: { maximum: 256 }
  
  validates :pub_type, presence: true
  
  validates :pub_name, presence: true,
  										 length: { maximum: 256 }
  
  VALID_YEAR_REGEX = /[1-2][0-9][0-9][0-9]/
  validates :year, presence: true,
  								 length: { :is => 4 },
  								 format: { with: VALID_YEAR_REGEX }
  
  validates :month, presence: true
  
  VALID_PAGE_REGEX = /[1-9]+[0-9]*/
  validates :pages, presence: true,
  									format: { with: VALID_PAGE_REGEX }
  
  #validates :notes, presence: true
  
  validates :summary, presence: true
  
  default_scope order: 'publications.created_at DESC'
end
