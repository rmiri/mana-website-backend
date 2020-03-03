class User < ApplicationRecord
has_many :purschases, dependent: :destroy
has_many :products, through: :purschases
has_many :promotions , dependent: :destroy 
has_many :appointments, dependent: :destroy
has_many :services, through: :appointments

has_secure_password
end
