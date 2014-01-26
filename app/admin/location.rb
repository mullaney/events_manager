ActiveAdmin.register Location do

  permit_params :name, :box_office_url, :description, :street_address, :street_address_2,
    :city, :state, :zip, :box_office_phone, :website_url, :map_url, :embedded_map_code

  index do
    column :name
    column :street_address
    column :box_office_phone
    default_actions
  end

  filter :name
  filter :city
  filter :state

  # form do |f|
  #   f.inputs "Admin Details" do
  #     f.input :email
  #     f.input :password
  #     f.input :password_confirmation
  #   end
  #   f.actions
  # end

end
