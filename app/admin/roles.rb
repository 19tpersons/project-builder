ActiveAdmin.register Role do

  permit_params :cost_per_hour,
    :velocity,
    :name,
    activities_attributes: [:id, :name, :estimated_amount]

 
  form do |f|
    f.inputs do
      f.input :cost_per_hour
      f.input :velocity
      f.input :name
    end
    
    f.inputs do
      f.has_many :activities,
                 new_record: 'New Activity',
                 remove_record: 'Remove Activity',
                 allow_destroy: true do | ff |
        ff.input :name
        ff.input :estimated_hours_amount
        ff.input :estimated_percentage_amount
      end
    end

    f.actions
  end

  show do | page |
    attributes_table do
      row :name
      row :cost_per_hour
      row :velocity
      row :created_at
      row :updated_at
    end

    panel "Activities" do
      table_for page.activities do 
        column :name do | activity |
          link_to activity.name, edit_admin_activity_path
        end
        column :estimated_hours_amount
        column :estimated_percentage_amount
      end
    end
    
    active_admin_comments
  end
end
