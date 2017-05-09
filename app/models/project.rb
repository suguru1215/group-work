class Project < ApplicationRecord
  has_many :tasks

  validates :name, presence: true, length: { maximum: 50}
  validates :content, presence: true, length: { maximum: 500}

  has_attached_file :image, styles: { medium: "680x300>", thumb: "170x75>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
