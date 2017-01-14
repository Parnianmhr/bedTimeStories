class Page < ApplicationRecord
  belongs_to :book

  validates :text, length: {maximum: 150 }, presence: true

  validates :image_url, length: { maximum: 255 }, allow_blank: true

  
end
