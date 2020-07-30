class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :category
  belongs_to :user
  has_many :images
  accepts_nested_attributes_for :item_images, allow_destroy: true

  [:name, :explanation, :quality, :delivery_cost, :prefecture_id, :period, :price, :user_id].each do |v|
    validates v, presence: true
  end

  validates :name, length: { maximum: 40 }

end
