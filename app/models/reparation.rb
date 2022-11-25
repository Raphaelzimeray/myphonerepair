class Reparation < ApplicationRecord
  belongs_to :phone
  validates :date, presence: true
  validates :price_of_repair, presence: true
end
