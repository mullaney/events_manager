ActiveAdmin.register User do

  permit_params :email

  filter :email
end
