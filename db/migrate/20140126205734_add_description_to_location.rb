class AddDescriptionToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :description, :text
    add_column :locations, :street_address, :string
    add_column :locations, :street_address_2, :string
    add_column :locations, :city, :string
    add_column :locations, :state, :string
    add_column :locations, :zip, :string
    add_column :locations, :box_office_phone, :string
    add_column :locations, :website_url, :string
    add_column :locations, :map_url, :string
    add_column :locations, :embedded_map_code, :text
  end
end
