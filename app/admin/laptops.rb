ActiveAdmin.register Laptop do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :laptop_name, :brand, :model, :price, :sale_price, :on_off_sale, :processor, :ram, :storage, :operating_system, :gpu, :size, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:laptop_name, :brand, :model, :price, :sale_price, :on_off_sale, :processor, :ram, :storage, :operating_system, :gpu, :size]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      if f.object.image.attached?
        f.input :image, as: :file, hint: image_tag(f.object.image)
      else
        f.input :image, as: :file
      end
    end
    f.actions
  end
end
