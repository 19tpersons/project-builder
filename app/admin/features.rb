ActiveAdmin.register Feature do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :feature_category_id, :estimate, :status, :current_hours, :name, :trello_card
  #
  # or
  #
  # permit_params do
  #   permitted = [:feature_category_id, :estimate, :status, :current_hours, :name, :trello_card]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
