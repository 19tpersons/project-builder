ActiveAdmin.register FeatureCategory do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :project_id, 
    :name, 
    :category_type,
    features_attributes: [:id, :name, :estimate, :current_hours, :trello_card]
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :category_type
    end
    
    f.inputs do
      f.has_many :features,
                 new_record: 'New Feature',
                 remove_record: 'Remove Feature',
                 allow_destroy: true do | ff |
        ff.input :name
        ff.input :estimate
        ff.input :current_hours
        ff.input :trello_card
      end
    end

    f.actions
  end
  
end
