ActiveAdmin.register Project do
  permit_params :start_date,
    :name,
    :product_owner,
    :contingency,
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
    end

    f.inputs "Epics/Change Requests" do
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

  show do | page |
    attributes_table do
      row :name
      row :product_owner
      row :contingency
      row :created_at
      row :updated_at
    end

    panel "Employees" do
      a "Add Employee/Role to Project", href: new_admin_role_path(project_id: 1)
      table_for page.roles do
        column :name do | role |
          link_to role.employee.name, edit_admin_feature_path
        end
        column :role do | role |
          link_to role.name, edit_admin_role_path
        end
      end
    end

    panel "Epics/Change Requests" do
      table_for page.feature_categories do 
        column :name do | category |
          link_to category.name, admin_feature_category_path
        end
        column :category_type
        column "Feature Count" do | category |
          category.features.length
        end
      end
    end

    panel "Features" do 
      table_for page.features do 
        column :name do | feature |
          link_to feature.name, edit_admin_feature_path
        end
        column :estimate
        column :current_hours
        column :status
        column :trello_card
      end
    end
    
    active_admin_comments
  end

end
