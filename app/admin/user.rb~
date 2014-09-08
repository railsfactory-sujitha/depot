ActiveAdmin.register User do
config.clear_action_items!

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

index do
    column :id
    column :name
    column :email
    column :address
    column :current_sign_in_at
    column :last_sign_in_at
actions defaults: false do |user|
link_to 'show' , admin_user_path(user)
end
  end


end
