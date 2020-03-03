class Service < ApplicationRecord
    has_many :promotions, dependent: :destroy
    has_many :appointments, dependent: :destroy
    
end
