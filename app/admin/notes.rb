ActiveAdmin.register Note do

  permit_params :content

  index do
    column :id
    column :content
    column :created_at
    column :author do |note|
      note.user.name
    end
    actions
  end

  form do |f|
    inputs 'New Note' do
      input :content
    end
    actions
  end

end
