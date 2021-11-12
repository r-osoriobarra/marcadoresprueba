class Bookmark < ApplicationRecord
  belongs_to :category #un bookmarkpuede pertenecer a una categoria
  belongs_to :url_type#un bookmarkpuede pertenecer a un tipo
end
