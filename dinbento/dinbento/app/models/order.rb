class Order < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum:2 }

  validates :phone, presence: true
  validates :phone, length: { minimum:9 }
  validates :phone, uniqueness: true

  validates :description, presence: true
end

# skinny controller, fat model