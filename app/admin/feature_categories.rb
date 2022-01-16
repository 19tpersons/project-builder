ActiveAdmin.register FeatureCategory do
  #Change Menu Label
  menu label: "Epics/CRs"

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

  show do | page |
    attributes_table do
      row :project
      row :name
      row :category_type
      row :created_at
      row :updated_at
    end

    panel "Features" do
      table_for page.features do 
        column :name do | feature |
          link_to feature.name, edit_admin_feature_path
        end
        column :estimate
        column :current_hours
        column :trello_card
      end
    end
    
    active_admin_comments
  end
  
end
