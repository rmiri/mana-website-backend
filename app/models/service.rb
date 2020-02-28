class Service < ApplicationRecord
    has_many :promotions
    has_many :appointments
    
end
