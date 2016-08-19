class Item < ApplicationRecord
  belongs_to :list

  validates_presence_of :item_name

  def self.list_priority
  order(:priority)
  end

  def self.priority
    [1,2,3]
  end
end
