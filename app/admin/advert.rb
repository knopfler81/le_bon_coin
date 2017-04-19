ActiveAdmin.register Advert do
  belongs_to :user
  permit_params :title, :description # etc...
end
