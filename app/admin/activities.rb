ActiveAdmin.register Activity do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :role_id, :name, :estimated_amount
  #
  # or
  #
  # permit_params do
  #   permitted = [:role_id, :name, :estimated_amount]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :role_id
      f.input :name
      f.input :estimated_amount
    end
    f.actions
  end
  
end
