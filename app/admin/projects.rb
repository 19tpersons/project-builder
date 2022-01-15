ActiveAdmin.register Project do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :start_date, :name, :product_owner, :contingency
  #
  # or
  #
  # permit_params do
  #   permitted = [:start_date, :name, :product_owner, :contingency]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  

  form do |f|
    f.inputs do
      f.input :name
      f.input :product_owner
      f.input :contingency
    end

    f.input :start_date, as: :datepicker,
    datepicker_options: {
      min_date: "2013-10-8",
      max_date: "+3D"
    }

    f.inputs do
      f.has_many :feature_categories,
                 new_record: 'New Epic/Change Request',
                 remove_record: 'Remove Epic/Change Reuest',
                 allow_destroy: true
    end


    f.actions
  end

end
