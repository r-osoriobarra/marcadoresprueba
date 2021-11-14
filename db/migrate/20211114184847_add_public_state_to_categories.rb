class AddPublicStateToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :public_state, :boolean, default: true
  end
end
