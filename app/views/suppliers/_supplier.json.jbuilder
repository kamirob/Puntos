json.extract! supplier, :id, :name, :nit, :address, :phone, :email, :contact_name, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
