class Buy < ApplicationRecord
  belongs_to :phone
  belongs_to :user
end
