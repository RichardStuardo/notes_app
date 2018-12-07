ActiveAdmin.register User do

  permit_params :email, :password

  controller do
    def update
      if (params[:user][:password].blank? && params[:user][:password_confirmation].blank?)
        params[:user].delete("password")
        params[:user].delete("password_confirmation")
      end
      super
    end
  end

  show do
    
  end

  index do
    column :id
    column :email
    column :created_at
    column :notes do |user|
      user.notes.count
    end
    actions
  end

  form do |f|
    inputs 'New User' do
      input :email
      input :password
    end
    actions
  end

end
