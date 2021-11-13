class Category < ApplicationRecord
    has_many :bookmarks

    #self-reference
    belongs_to :parent_category, class_name: "Category", optional: true,  dependent: :destroy 
    has_many :sub_categories, class_name: "Category", foreign_key: "category_id", dependent: :destroy
    
    # TODO: cachar porque no nos pescan lo alias de parent_category y sub_categories
end
