class TdList < ApplicationRecord
  has_many :items, dependent: :destroy
end
