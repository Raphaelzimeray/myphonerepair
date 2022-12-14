class Reparation < ApplicationRecord
  belongs_to :phone
  belongs_to :user
  validates :date, presence: true
  validates :price_of_repair, presence: true
  validates :reparation_type, presence: true
  LISTE_REPARATIONS = ["Ecran", "Appareil photo", "Batterie", "Haut parleur", "Connecteur de charge", "Facade arrière"]
end
