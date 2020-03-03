class Promotion < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :service
end
