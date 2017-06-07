class Category < ActiveRecord::Base

  has_many :products

  validates :name, presence: true

  before_create :create_timestamp
  before_update :update_timestamp

  private
  def create_timestamp
    self.created_at = DateTime.now
  end

  def update_timestamp
    self.updated_at = DateTime.now
  end
end
