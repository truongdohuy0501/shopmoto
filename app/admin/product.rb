ActiveAdmin.register Product do
  # Strong parameters trong Rails
  # cho ph�p Rails controllers nh?n gi� tr? truy?n t? views
  # Cho c�c thu?c t�nh du?c khai b�o du?i d�y
  permit_params :image, :name, :description, :price, :year

  index do
    selectable_column
    id_column
    column :name
    column :image
    column :description
    column :price
    column :year
    actions
  end

  # Cho ph�p admin search theo c�c thu?c t�nh n�y t?i trang index
  filter :name
  filter :price

  # C�c thu?c t�nh s? du?c hi?n th? d? Admin nh?p gi� tr?
  form do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :image
      f.input :description
      f.input :price
      f.input :year
    end
    f.actions
  end

end