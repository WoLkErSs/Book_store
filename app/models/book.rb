class Book < ApplicationRecord
  has_and_belongs_to_many :authors

  belongs_to :category

  scope :newest, -> () { order('created_at DESC') }
  scope :popular_desc, -> () { order('used DESC') }
  scope :price_desc, -> () { order('price DESC') }
  scope :price_asc, -> () { order('price ASC') }
end
