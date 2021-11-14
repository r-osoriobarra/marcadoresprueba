class Category < ApplicationRecord
    has_many :bookmarks

    #self-reference
    belongs_to :parent_category, class_name: "Category", foreign_key: "category_id", optional: true
    has_many :sub_categories, class_name: "Category", foreign_key: "category_id"
    
    #public or private parent category method 
    def change_state
        parent = self.parent_category
        if parent.nil? == false
            parent.sub_categories.each do |sub|
                sub.update(public_state: parent.public_state)
            end
        else
            self.sub_categories.each do |sub|
                sub.update(public_state: self.public_state)
            end
        end
    end
































    
end