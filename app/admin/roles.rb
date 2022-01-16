ActiveAdmin.register Role do

  permit_params :cost_per_hour,
    :velocity,
    :name,
    project_ids: [],
    activities_attributes: [:id, :name, :estimated_amount]

 
  form do |f|
    f.inputs do
      f.input :cost_per_hour
      f.input :velocity
      f.input :name
      f.input :project_ids, as: :check_boxes, collection: Project.all
    end
    
    f.inputs do
      f.has_many :activities,
                 new_record: 'New Activity',
                 remove_record: 'Remove Activity',
                 allow_destroy: true do | ff |
        ff.input :name
        ff.input :estimated_amount
      end
    end

    f.actions
  end
end
