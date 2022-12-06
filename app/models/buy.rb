class Buy < ApplicationRecord
  belongs_to :phone
  belongs_to :user
  validates :phone_price, presence: true
  validates :delivery_date, presence: true
  validates :accessories, presence: true
  validates :warranty, presence: true
  LIST_ACCESSORIES = ["Coque de protéction", "Film protécteur pour écran", "Chargeur induction"]
  LIST_WARRANTY = ["1 an (gratuit)", "2 ans (50€ supplémentaires)", "3 ans (100€ supplémentaires)"]
end
