class AddContentToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :content, :text
  end
end
