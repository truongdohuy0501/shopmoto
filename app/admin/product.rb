ActiveAdmin.register Product do
  # Strong parameters trong Rails
  # cho phép Rails controllers nh?n giá tr? truy?n t? views
  # Cho các thu?c tính du?c khai báo du?i dây
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

  # Cho phép admin search theo các thu?c tính này t?i trang index
  filter :name
  filter :price

  # Các thu?c tính s? du?c hi?n th? d? Admin nh?p giá tr?
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