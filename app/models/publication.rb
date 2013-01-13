class Publication < ActiveRecord::Base
  attr_accessible :month, :notes, :pages, :pub_name, :pub_type, :summary, :title, :year #, :user_id
  belongs_to :user
  
  validates :user_id, presence: true
end
