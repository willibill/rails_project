class Book < ActiveRecord::Base

  has_many :users
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :title , presence: true, length: { minimum: 1}
  validates :Author , presence: true, length: { maximum: 50}
  validates :ISBN , presence: true, length: { maximum: 10}
  validates :Publisher , presence: true, length: { maximum: 50}
  validates :description , presence: true
  validates :Language , presence: true, length: { maximum: 50}
  validates :onloan , presence: true, length: { maximum: 1}

  #search function
  def self.search(search)
    where("title LIKE ? OR Author LIKE ? OR ISBN LIKE ? OR Language LIKE ? OR Publisher LIKE ? ",  "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")

  end



end
