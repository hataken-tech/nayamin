class Nayami < ApplicationRecord
  validates :name, presence: true, length:{maximum: 400}
  validates :user_id, presence: true
end
