class LineItem < ApplicationRecord
  belongs_to :texture
  belongs_to :texture_group
end
