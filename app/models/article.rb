# frozen_string_literal: true

class Article < ApplicationRecord
  
  # title validation
  validates :title, presence: true, length: {minimum: 6, maximum: 50}
  
  # description validation
  validates :description, presence: true, length: {minimum: 10, maximum: 500}
  
end
