class AddCategoryToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :category_id, :int
  end
end
