ActiveAdmin.register Employee do
  permit_params :name,
    role_ids: []
  
  form do |f|
    f.inputs do
      f.input :name
      #f.input :role_ids, as: :check_boxes, collection: Role.all
    end

    f.actions
  end


  show do | page |
    attributes_table do
      row :name
      row :created_at
      row :updated_at
    end

    panel "Activities" do
      table_for page.roles do 
        column :name do | role |
          link_to role.name, edit_admin_activity_path
        end
        column :estimated_amount
        column :cost_per_hour
        column :velocity
      end
    end
    
    active_admin_comments
  end
end
