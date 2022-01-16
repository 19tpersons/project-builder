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
        ff.input :estimated_amount
      end
    end

    f.actions
  end
end
