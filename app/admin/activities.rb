ActiveAdmin.register Activity do
  #Hide index page from main menu
  menu false
  
  permit_params :role_id, :name, :estimated_amount
end
