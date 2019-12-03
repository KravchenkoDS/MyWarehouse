class Product < ApplicationRecord
  has_many :movings, dependent: :nullify
end
