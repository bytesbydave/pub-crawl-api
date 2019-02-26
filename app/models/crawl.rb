class Crawl < ApplicationRecord
  has_many :locations, dependent: :destroy
end
