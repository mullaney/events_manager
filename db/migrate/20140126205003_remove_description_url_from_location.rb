class RemoveDescriptionUrlFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :description_url, :string
  end
end
