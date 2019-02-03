class Search < ApplicationRecord
  validates_uniqueness_of :query
end
