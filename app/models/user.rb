class User < ApplicationRecord
has_many :purschases
has_many :products through: :purschases
has_many :promotions
has_many :appointments
has_many :services through: :appointments
end
