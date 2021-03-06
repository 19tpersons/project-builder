ActiveAdmin.register Feature do
  #Hide index page from main menu
  menu false

   permit_params :feature_category_id, :estimate, :status, :current_hours, :name, :trello_card

   form do |f|
    f.inputs do
      f.input :feature_category
      f.input :name
      f.input :estimate
      f.input :current_hours
      f.input :status
      f.input :trello_card
    end

    f.actions
  end
end
