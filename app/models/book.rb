class Book < ActiveRecord::Base
	belongs_to :category
	belongs_to :publisher
	belongs_to :author

  validates :title, presence: true
  validates :info, presence: true
  validates :year, presence: true, length: {minimum: 4, maximum: 4}
  validates :pages, presence: true
  validates :cover_path, presence: true
  validates :price, presence: true
  validates :buy, presence: true
  validates :publisher_id, presence: true
  validates :category_id, presence: true
  validates :author_id, presence: true
end
