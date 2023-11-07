class Category < ApplicationRecord
  has_many :blueprints

  validates :name, presence: true, uniqueness: true

end
