class User < ApplicationRecord
has_many :purschases, dependent: :destroy
has_many :products, through: :purschases
has_many :promotions , dependent: :destroy 
has_many :appointments, dependent: :destroy
has_many :services, through: :appointments

has_secure_password

validates :name, presence: true, length: { in: 1..20}
validates :family_name, presence: true, length: { in: 1..50}

# validates :dob, presence: true
validates :phone, numericality: true, on: :create

validates :email, :uniqueness => true, on: :create, length: { in: 1..50}
validates :email, :presence => true, length: { maximum: 100}
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
validates :password, presence: true 


end
