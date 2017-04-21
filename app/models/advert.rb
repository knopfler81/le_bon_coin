class Advert < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_attachments :photos, maximum: 3
  validates :title, presence: true, length: {minimum: 15}
  validates :description, presence: true, length: {minimum: 80}
  validates :price, presence: true
  validates :location, presence: true
  enum role: { Demande: 0, Offre: 1}

  def self.search(search)
    if search
     where(["lower(title) LIKE ?","%#{search.downcase}%"]).order('created_at DESC')
    else
      all
    end
  end
end
