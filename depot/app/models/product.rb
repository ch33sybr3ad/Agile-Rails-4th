class Product < ActiveRecord::Base
  default_scope { order('title') }

  validates_presence_of :title, :description, :image_url
  validates :price, :numericality => { greater_than_or_equal_to: 0.01 } 
  validates_uniqueness_of :title
  validates :image_url, :format => {
    with: %r{\.(gif|jpg|png)\z}i,
    message: 'must be a URL for GIF, JPQ or PNG image',
  }

end
