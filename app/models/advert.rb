class Advert < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_attachments :photos, maximum: 3
  #validates :type, presence: true
  validates :title, presence: true, length: {minimum: 15}
  validates :description, presence: true, length: {minimum: 80}
  validates :price, presence: true
  #validates :location, presence: true
end
