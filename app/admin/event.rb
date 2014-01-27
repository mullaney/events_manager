ActiveAdmin.register Event do

  permit_params :start_time, :end_time, :location_id, :event_group_id, :description

  belongs_to :event_group

  # filter :event_group
  # filter :location
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
