class Supply < ActiveRecord::Base
  belongs_to :user
  belongs_to :ingredient
  validates :ingredient, uniqueness: true
  attr_accessor :name
end
