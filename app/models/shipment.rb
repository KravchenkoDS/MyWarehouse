class Shipment < ApplicationRecord
  has_many :movings, dependent: :nullify
end
