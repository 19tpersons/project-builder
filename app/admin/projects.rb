ActiveAdmin.register Project do
  permit_params :start_date,
    :name,
    :product_owner,
    :contingency,
    role_ids: [],
    feature_categories_attributes: [:id, :name, :category_type]

  

  form do |f|
    f.inputs do
      f.input :name
      f.input :product_owner
      f.input :contingency
      f.input :start_date, as: :datepicker,
        datepicker_options: {
          min_date: "2013-10-8",
          max_date: "+3D"
        }
      f.input :role_ids, as: :check_boxes, collection: Role.all
    end

    f.inputs do
      f.has_many :feature_categories,
                 new_record: 'New Epic/Change Request',
                 remove_record: 'Remove Epic/Change Reuest',
                 allow_destroy: true do | ff |
        ff.input :name
        ff.input :category_type
      end
    end


    f.actions
  end

end
