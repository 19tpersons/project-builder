ActiveAdmin.register Employee do
  permit_params :name,
    role_ids: []
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :role_ids, as: :check_boxes, collection: Role.all
    end

    f.actions
  end

end
