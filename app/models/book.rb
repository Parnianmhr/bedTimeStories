class Book < ApplicationRecord
  has_many :pages

  def self.order_by_id
    order(:id)
  end
end
